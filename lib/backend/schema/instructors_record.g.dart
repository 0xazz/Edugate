// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructors_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstructorsRecord> _$instructorsRecordSerializer =
    new _$InstructorsRecordSerializer();

class _$InstructorsRecordSerializer
    implements StructuredSerializer<InstructorsRecord> {
  @override
  final Iterable<Type> types = const [InstructorsRecord, _$InstructorsRecord];
  @override
  final String wireName = 'InstructorsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InstructorsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fname;
    if (value != null) {
      result
        ..add('fname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mname;
    if (value != null) {
      result
        ..add('mname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lname;
    if (value != null) {
      result
        ..add('lname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instructorid;
    if (value != null) {
      result
        ..add('instructorid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phonenum;
    if (value != null) {
      result
        ..add('phonenum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sumratings;
    if (value != null) {
      result
        ..add('sumratings')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numofratings;
    if (value != null) {
      result
        ..add('numofratings')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  InstructorsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstructorsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fname':
          result.fname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mname':
          result.mname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lname':
          result.lname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instructorid':
          result.instructorid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phonenum':
          result.phonenum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'sumratings':
          result.sumratings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numofratings':
          result.numofratings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$InstructorsRecord extends InstructorsRecord {
  @override
  final String? fname;
  @override
  final String? mname;
  @override
  final String? lname;
  @override
  final String? email;
  @override
  final String? instructorid;
  @override
  final String? phonenum;
  @override
  final double? rating;
  @override
  final int? sumratings;
  @override
  final int? numofratings;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InstructorsRecord(
          [void Function(InstructorsRecordBuilder)? updates]) =>
      (new InstructorsRecordBuilder()..update(updates))._build();

  _$InstructorsRecord._(
      {this.fname,
      this.mname,
      this.lname,
      this.email,
      this.instructorid,
      this.phonenum,
      this.rating,
      this.sumratings,
      this.numofratings,
      this.ffRef})
      : super._();

  @override
  InstructorsRecord rebuild(void Function(InstructorsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstructorsRecordBuilder toBuilder() =>
      new InstructorsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstructorsRecord &&
        fname == other.fname &&
        mname == other.mname &&
        lname == other.lname &&
        email == other.email &&
        instructorid == other.instructorid &&
        phonenum == other.phonenum &&
        rating == other.rating &&
        sumratings == other.sumratings &&
        numofratings == other.numofratings &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, fname.hashCode), mname.hashCode),
                                    lname.hashCode),
                                email.hashCode),
                            instructorid.hashCode),
                        phonenum.hashCode),
                    rating.hashCode),
                sumratings.hashCode),
            numofratings.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstructorsRecord')
          ..add('fname', fname)
          ..add('mname', mname)
          ..add('lname', lname)
          ..add('email', email)
          ..add('instructorid', instructorid)
          ..add('phonenum', phonenum)
          ..add('rating', rating)
          ..add('sumratings', sumratings)
          ..add('numofratings', numofratings)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InstructorsRecordBuilder
    implements Builder<InstructorsRecord, InstructorsRecordBuilder> {
  _$InstructorsRecord? _$v;

  String? _fname;
  String? get fname => _$this._fname;
  set fname(String? fname) => _$this._fname = fname;

  String? _mname;
  String? get mname => _$this._mname;
  set mname(String? mname) => _$this._mname = mname;

  String? _lname;
  String? get lname => _$this._lname;
  set lname(String? lname) => _$this._lname = lname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _instructorid;
  String? get instructorid => _$this._instructorid;
  set instructorid(String? instructorid) => _$this._instructorid = instructorid;

  String? _phonenum;
  String? get phonenum => _$this._phonenum;
  set phonenum(String? phonenum) => _$this._phonenum = phonenum;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _sumratings;
  int? get sumratings => _$this._sumratings;
  set sumratings(int? sumratings) => _$this._sumratings = sumratings;

  int? _numofratings;
  int? get numofratings => _$this._numofratings;
  set numofratings(int? numofratings) => _$this._numofratings = numofratings;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InstructorsRecordBuilder() {
    InstructorsRecord._initializeBuilder(this);
  }

  InstructorsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fname = $v.fname;
      _mname = $v.mname;
      _lname = $v.lname;
      _email = $v.email;
      _instructorid = $v.instructorid;
      _phonenum = $v.phonenum;
      _rating = $v.rating;
      _sumratings = $v.sumratings;
      _numofratings = $v.numofratings;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstructorsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstructorsRecord;
  }

  @override
  void update(void Function(InstructorsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstructorsRecord build() => _build();

  _$InstructorsRecord _build() {
    final _$result = _$v ??
        new _$InstructorsRecord._(
            fname: fname,
            mname: mname,
            lname: lname,
            email: email,
            instructorid: instructorid,
            phonenum: phonenum,
            rating: rating,
            sumratings: sumratings,
            numofratings: numofratings,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
