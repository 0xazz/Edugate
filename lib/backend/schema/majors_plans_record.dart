import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'majors_plans_record.g.dart';

abstract class MajorsPlansRecord
    implements Built<MajorsPlansRecord, MajorsPlansRecordBuilder> {
  static Serializer<MajorsPlansRecord> get serializer =>
      _$majorsPlansRecordSerializer;

  String? get link;

  String? get major;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MajorsPlansRecordBuilder builder) => builder
    ..link = ''
    ..major = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('majors_plans');

  static Stream<MajorsPlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MajorsPlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MajorsPlansRecord._();
  factory MajorsPlansRecord([void Function(MajorsPlansRecordBuilder) updates]) =
      _$MajorsPlansRecord;

  static MajorsPlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMajorsPlansRecordData({
  String? link,
  String? major,
}) {
  final firestoreData = serializers.toFirestore(
    MajorsPlansRecord.serializer,
    MajorsPlansRecord(
      (m) => m
        ..link = link
        ..major = major,
    ),
  );

  return firestoreData;
}
