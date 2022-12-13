import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'students_record.g.dart';

abstract class StudentsRecord
    implements Built<StudentsRecord, StudentsRecordBuilder> {
  static Serializer<StudentsRecord> get serializer =>
      _$studentsRecordSerializer;

  String? get dob;

  String? get email;

  String? get fname;

  double? get gpa;

  String? get lname;

  String? get major;

  String? get mname;

  String? get nid;

  String? get password;

  String? get phonenum;

  DocumentReference? get self;

  DocumentReference? get advisor;

  @BuiltValueField(wireName: 'student_id')
  String? get studentId;

  @BuiltValueField(wireName: 'time_table')
  BuiltList<DateTime>? get timeTable;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentsRecordBuilder builder) => builder
    ..dob = ''
    ..email = ''
    ..fname = ''
    ..gpa = 0.0
    ..lname = ''
    ..major = ''
    ..mname = ''
    ..nid = ''
    ..password = ''
    ..phonenum = ''
    ..studentId = ''
    ..timeTable = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('students');

  static Stream<StudentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentsRecord._();
  factory StudentsRecord([void Function(StudentsRecordBuilder) updates]) =
      _$StudentsRecord;

  static StudentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentsRecordData({
  String? dob,
  String? email,
  String? fname,
  double? gpa,
  String? lname,
  String? major,
  String? mname,
  String? nid,
  String? password,
  String? phonenum,
  DocumentReference? self,
  DocumentReference? advisor,
  String? studentId,
}) {
  final firestoreData = serializers.toFirestore(
    StudentsRecord.serializer,
    StudentsRecord(
      (s) => s
        ..dob = dob
        ..email = email
        ..fname = fname
        ..gpa = gpa
        ..lname = lname
        ..major = major
        ..mname = mname
        ..nid = nid
        ..password = password
        ..phonenum = phonenum
        ..self = self
        ..advisor = advisor
        ..studentId = studentId
        ..timeTable = null,
    ),
  );

  return firestoreData;
}
