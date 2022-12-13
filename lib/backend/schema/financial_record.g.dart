// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinancialRecord> _$financialRecordSerializer =
    new _$FinancialRecordSerializer();

class _$FinancialRecordSerializer
    implements StructuredSerializer<FinancialRecord> {
  @override
  final Iterable<Type> types = const [FinancialRecord, _$FinancialRecord];
  @override
  final String wireName = 'FinancialRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FinancialRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paymentid;
    if (value != null) {
      result
        ..add('paymentid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reason;
    if (value != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.student;
    if (value != null) {
      result
        ..add('student')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FinancialRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinancialRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'paymentid':
          result.paymentid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'student':
          result.student = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FinancialRecord extends FinancialRecord {
  @override
  final double? amount;
  @override
  final DateTime? date;
  @override
  final String? paymentid;
  @override
  final String? reason;
  @override
  final DocumentReference<Object?>? student;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FinancialRecord([void Function(FinancialRecordBuilder)? updates]) =>
      (new FinancialRecordBuilder()..update(updates))._build();

  _$FinancialRecord._(
      {this.amount,
      this.date,
      this.paymentid,
      this.reason,
      this.student,
      this.ffRef})
      : super._();

  @override
  FinancialRecord rebuild(void Function(FinancialRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinancialRecordBuilder toBuilder() =>
      new FinancialRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinancialRecord &&
        amount == other.amount &&
        date == other.date &&
        paymentid == other.paymentid &&
        reason == other.reason &&
        student == other.student &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, amount.hashCode), date.hashCode),
                    paymentid.hashCode),
                reason.hashCode),
            student.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FinancialRecord')
          ..add('amount', amount)
          ..add('date', date)
          ..add('paymentid', paymentid)
          ..add('reason', reason)
          ..add('student', student)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FinancialRecordBuilder
    implements Builder<FinancialRecord, FinancialRecordBuilder> {
  _$FinancialRecord? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _paymentid;
  String? get paymentid => _$this._paymentid;
  set paymentid(String? paymentid) => _$this._paymentid = paymentid;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DocumentReference<Object?>? _student;
  DocumentReference<Object?>? get student => _$this._student;
  set student(DocumentReference<Object?>? student) => _$this._student = student;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FinancialRecordBuilder() {
    FinancialRecord._initializeBuilder(this);
  }

  FinancialRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _date = $v.date;
      _paymentid = $v.paymentid;
      _reason = $v.reason;
      _student = $v.student;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinancialRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinancialRecord;
  }

  @override
  void update(void Function(FinancialRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinancialRecord build() => _build();

  _$FinancialRecord _build() {
    final _$result = _$v ??
        new _$FinancialRecord._(
            amount: amount,
            date: date,
            paymentid: paymentid,
            reason: reason,
            student: student,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
