import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teaches_record.g.dart';

abstract class TeachesRecord
    implements Built<TeachesRecord, TeachesRecordBuilder> {
  static Serializer<TeachesRecord> get serializer => _$teachesRecordSerializer;

  DocumentReference? get section;

  DocumentReference? get instructor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeachesRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teaches');

  static Stream<TeachesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeachesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeachesRecord._();
  factory TeachesRecord([void Function(TeachesRecordBuilder) updates]) =
      _$TeachesRecord;

  static TeachesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeachesRecordData({
  DocumentReference? section,
  DocumentReference? instructor,
}) {
  final firestoreData = serializers.toFirestore(
    TeachesRecord.serializer,
    TeachesRecord(
      (t) => t
        ..section = section
        ..instructor = instructor,
    ),
  );

  return firestoreData;
}
