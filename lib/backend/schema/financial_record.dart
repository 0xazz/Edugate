import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'financial_record.g.dart';

abstract class FinancialRecord
    implements Built<FinancialRecord, FinancialRecordBuilder> {
  static Serializer<FinancialRecord> get serializer =>
      _$financialRecordSerializer;

  double? get amount;

  DateTime? get date;

  String? get paymentid;

  String? get reason;

  DocumentReference? get student;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FinancialRecordBuilder builder) => builder
    ..amount = 0.0
    ..paymentid = ''
    ..reason = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('financial');

  static Stream<FinancialRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FinancialRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FinancialRecord._();
  factory FinancialRecord([void Function(FinancialRecordBuilder) updates]) =
      _$FinancialRecord;

  static FinancialRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFinancialRecordData({
  double? amount,
  DateTime? date,
  String? paymentid,
  String? reason,
  DocumentReference? student,
}) {
  final firestoreData = serializers.toFirestore(
    FinancialRecord.serializer,
    FinancialRecord(
      (f) => f
        ..amount = amount
        ..date = date
        ..paymentid = paymentid
        ..reason = reason
        ..student = student,
    ),
  );

  return firestoreData;
}
