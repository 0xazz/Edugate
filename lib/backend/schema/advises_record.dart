import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'advises_record.g.dart';

abstract class AdvisesRecord
    implements Built<AdvisesRecord, AdvisesRecordBuilder> {
  static Serializer<AdvisesRecord> get serializer => _$advisesRecordSerializer;

  DocumentReference? get advisee;

  DocumentReference? get advisor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AdvisesRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('advises');

  static Stream<AdvisesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AdvisesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AdvisesRecord._();
  factory AdvisesRecord([void Function(AdvisesRecordBuilder) updates]) =
      _$AdvisesRecord;

  static AdvisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAdvisesRecordData({
  DocumentReference? advisee,
  DocumentReference? advisor,
}) {
  final firestoreData = serializers.toFirestore(
    AdvisesRecord.serializer,
    AdvisesRecord(
      (a) => a
        ..advisee = advisee
        ..advisor = advisor,
    ),
  );

  return firestoreData;
}
