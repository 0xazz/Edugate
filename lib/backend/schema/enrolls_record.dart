import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enrolls_record.g.dart';

abstract class EnrollsRecord
    implements Built<EnrollsRecord, EnrollsRecordBuilder> {
  static Serializer<EnrollsRecord> get serializer => _$enrollsRecordSerializer;

  int? get absences;

  DocumentReference? get course;

  double? get grade;

  @BuiltValueField(wireName: 'letter_grade')
  String? get letterGrade;

  DocumentReference? get section;

  DocumentReference? get student;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnrollsRecordBuilder builder) => builder
    ..absences = 0
    ..grade = 0.0
    ..letterGrade = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enrolls');

  static Stream<EnrollsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnrollsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnrollsRecord._();
  factory EnrollsRecord([void Function(EnrollsRecordBuilder) updates]) =
      _$EnrollsRecord;

  static EnrollsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnrollsRecordData({
  int? absences,
  DocumentReference? course,
  double? grade,
  String? letterGrade,
  DocumentReference? section,
  DocumentReference? student,
}) {
  final firestoreData = serializers.toFirestore(
    EnrollsRecord.serializer,
    EnrollsRecord(
      (e) => e
        ..absences = absences
        ..course = course
        ..grade = grade
        ..letterGrade = letterGrade
        ..section = section
        ..student = student,
    ),
  );

  return firestoreData;
}
