import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'schedule_record.g.dart';

abstract class ScheduleRecord
    implements Built<ScheduleRecord, ScheduleRecordBuilder> {
  static Serializer<ScheduleRecord> get serializer =>
      _$scheduleRecordSerializer;

  String? get studentId;

  BuiltList<DocumentReference>? get regCourses;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScheduleRecordBuilder builder) => builder
    ..studentId = ''
    ..regCourses = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScheduleRecord._();
  factory ScheduleRecord([void Function(ScheduleRecordBuilder) updates]) =
      _$ScheduleRecord;

  static ScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScheduleRecordData({
  String? studentId,
}) {
  final firestoreData = serializers.toFirestore(
    ScheduleRecord.serializer,
    ScheduleRecord(
      (s) => s
        ..studentId = studentId
        ..regCourses = null,
    ),
  );

  return firestoreData;
}
