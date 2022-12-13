import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sections_record.g.dart';

abstract class SectionsRecord
    implements Built<SectionsRecord, SectionsRecordBuilder> {
  static Serializer<SectionsRecord> get serializer =>
      _$sectionsRecordSerializer;

  DocumentReference? get instructor;

  @BuiltValueField(wireName: 'section_id')
  String? get sectionId;

  DocumentReference? get course;

  String? get days;

  @BuiltValueField(wireName: 'max_capacity')
  int? get maxCapacity;

  @BuiltValueField(wireName: 'number_of_students')
  int? get numberOfStudents;

  String? get place;

  String? get semester;

  DateTime? get time;

  int? get year;

  @BuiltValueField(wireName: 'final_location')
  String? get finalLocation;

  @BuiltValueField(wireName: 'final_date')
  DateTime? get finalDate;

  @BuiltValueField(wireName: 'date_time')
  BuiltList<DateTime>? get dateTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SectionsRecordBuilder builder) => builder
    ..sectionId = ''
    ..days = ''
    ..maxCapacity = 0
    ..numberOfStudents = 0
    ..place = ''
    ..semester = ''
    ..year = 0
    ..finalLocation = ''
    ..dateTime = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sections');

  static Stream<SectionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SectionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SectionsRecord._();
  factory SectionsRecord([void Function(SectionsRecordBuilder) updates]) =
      _$SectionsRecord;

  static SectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSectionsRecordData({
  DocumentReference? instructor,
  String? sectionId,
  DocumentReference? course,
  String? days,
  int? maxCapacity,
  int? numberOfStudents,
  String? place,
  String? semester,
  DateTime? time,
  int? year,
  String? finalLocation,
  DateTime? finalDate,
}) {
  final firestoreData = serializers.toFirestore(
    SectionsRecord.serializer,
    SectionsRecord(
      (s) => s
        ..instructor = instructor
        ..sectionId = sectionId
        ..course = course
        ..days = days
        ..maxCapacity = maxCapacity
        ..numberOfStudents = numberOfStudents
        ..place = place
        ..semester = semester
        ..time = time
        ..year = year
        ..finalLocation = finalLocation
        ..finalDate = finalDate
        ..dateTime = null,
    ),
  );

  return firestoreData;
}
