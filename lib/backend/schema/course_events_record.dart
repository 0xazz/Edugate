import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'course_events_record.g.dart';

abstract class CourseEventsRecord
    implements Built<CourseEventsRecord, CourseEventsRecordBuilder> {
  static Serializer<CourseEventsRecord> get serializer =>
      _$courseEventsRecordSerializer;

  DocumentReference? get course;

  String? get description;

  int? get accept;

  int? get reject;

  DateTime? get datetime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CourseEventsRecordBuilder builder) => builder
    ..description = ''
    ..accept = 0
    ..reject = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('course_events');

  static Stream<CourseEventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CourseEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CourseEventsRecord._();
  factory CourseEventsRecord(
          [void Function(CourseEventsRecordBuilder) updates]) =
      _$CourseEventsRecord;

  static CourseEventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCourseEventsRecordData({
  DocumentReference? course,
  String? description,
  int? accept,
  int? reject,
  DateTime? datetime,
}) {
  final firestoreData = serializers.toFirestore(
    CourseEventsRecord.serializer,
    CourseEventsRecord(
      (c) => c
        ..course = course
        ..description = description
        ..accept = accept
        ..reject = reject
        ..datetime = datetime,
    ),
  );

  return firestoreData;
}
