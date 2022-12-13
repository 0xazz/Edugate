import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'semester_courses_record.g.dart';

abstract class SemesterCoursesRecord
    implements Built<SemesterCoursesRecord, SemesterCoursesRecordBuilder> {
  static Serializer<SemesterCoursesRecord> get serializer =>
      _$semesterCoursesRecordSerializer;

  DocumentReference? get course;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SemesterCoursesRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('semester_courses');

  static Stream<SemesterCoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SemesterCoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SemesterCoursesRecord._();
  factory SemesterCoursesRecord(
          [void Function(SemesterCoursesRecordBuilder) updates]) =
      _$SemesterCoursesRecord;

  static SemesterCoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSemesterCoursesRecordData({
  DocumentReference? course,
}) {
  final firestoreData = serializers.toFirestore(
    SemesterCoursesRecord.serializer,
    SemesterCoursesRecord(
      (s) => s..course = course,
    ),
  );

  return firestoreData;
}
