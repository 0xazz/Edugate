import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transcripts_record.g.dart';

abstract class TranscriptsRecord
    implements Built<TranscriptsRecord, TranscriptsRecordBuilder> {
  static Serializer<TranscriptsRecord> get serializer =>
      _$transcriptsRecordSerializer;

  DocumentReference? get student;

  DocumentReference? get course;

  int? get grade;

  double? get scaledgrade;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TranscriptsRecordBuilder builder) => builder
    ..grade = 0
    ..scaledgrade = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transcripts');

  static Stream<TranscriptsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TranscriptsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TranscriptsRecord._();
  factory TranscriptsRecord([void Function(TranscriptsRecordBuilder) updates]) =
      _$TranscriptsRecord;

  static TranscriptsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTranscriptsRecordData({
  DocumentReference? student,
  DocumentReference? course,
  int? grade,
  double? scaledgrade,
}) {
  final firestoreData = serializers.toFirestore(
    TranscriptsRecord.serializer,
    TranscriptsRecord(
      (t) => t
        ..student = student
        ..course = course
        ..grade = grade
        ..scaledgrade = scaledgrade,
    ),
  );

  return firestoreData;
}
