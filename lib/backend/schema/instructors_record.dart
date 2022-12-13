import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'instructors_record.g.dart';

abstract class InstructorsRecord
    implements Built<InstructorsRecord, InstructorsRecordBuilder> {
  static Serializer<InstructorsRecord> get serializer =>
      _$instructorsRecordSerializer;

  String? get fname;

  String? get mname;

  String? get lname;

  String? get email;

  String? get instructorid;

  String? get phonenum;

  double? get rating;

  int? get sumratings;

  int? get numofratings;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InstructorsRecordBuilder builder) => builder
    ..fname = ''
    ..mname = ''
    ..lname = ''
    ..email = ''
    ..instructorid = ''
    ..phonenum = ''
    ..rating = 0.0
    ..sumratings = 0
    ..numofratings = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instructors');

  static Stream<InstructorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InstructorsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InstructorsRecord._();
  factory InstructorsRecord([void Function(InstructorsRecordBuilder) updates]) =
      _$InstructorsRecord;

  static InstructorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInstructorsRecordData({
  String? fname,
  String? mname,
  String? lname,
  String? email,
  String? instructorid,
  String? phonenum,
  double? rating,
  int? sumratings,
  int? numofratings,
}) {
  final firestoreData = serializers.toFirestore(
    InstructorsRecord.serializer,
    InstructorsRecord(
      (i) => i
        ..fname = fname
        ..mname = mname
        ..lname = lname
        ..email = email
        ..instructorid = instructorid
        ..phonenum = phonenum
        ..rating = rating
        ..sumratings = sumratings
        ..numofratings = numofratings,
    ),
  );

  return firestoreData;
}
