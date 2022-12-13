import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'courses_record.g.dart';

abstract class CoursesRecord
    implements Built<CoursesRecord, CoursesRecordBuilder> {
  static Serializer<CoursesRecord> get serializer => _$coursesRecordSerializer;

  String? get courseid;

  String? get coursename;

  String? get department;

  int? get hours;

  DocumentReference? get self;

  String? get description;

  String? get level;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CoursesRecordBuilder builder) => builder
    ..courseid = ''
    ..coursename = ''
    ..department = ''
    ..hours = 0
    ..description = ''
    ..level = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CoursesRecord._();
  factory CoursesRecord([void Function(CoursesRecordBuilder) updates]) =
      _$CoursesRecord;

  static CoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCoursesRecordData({
  String? courseid,
  String? coursename,
  String? department,
  int? hours,
  DocumentReference? self,
  String? description,
  String? level,
}) {
  final firestoreData = serializers.toFirestore(
    CoursesRecord.serializer,
    CoursesRecord(
      (c) => c
        ..courseid = courseid
        ..coursename = coursename
        ..department = department
        ..hours = hours
        ..self = self
        ..description = description
        ..level = level,
    ),
  );

  return firestoreData;
}
