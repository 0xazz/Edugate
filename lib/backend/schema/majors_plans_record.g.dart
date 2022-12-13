// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'majors_plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MajorsPlansRecord> _$majorsPlansRecordSerializer =
    new _$MajorsPlansRecordSerializer();

class _$MajorsPlansRecordSerializer
    implements StructuredSerializer<MajorsPlansRecord> {
  @override
  final Iterable<Type> types = const [MajorsPlansRecord, _$MajorsPlansRecord];
  @override
  final String wireName = 'MajorsPlansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MajorsPlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.major;
    if (value != null) {
      result
        ..add('major')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MajorsPlansRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MajorsPlansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'major':
          result.major = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MajorsPlansRecord extends MajorsPlansRecord {
  @override
  final String? link;
  @override
  final String? major;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MajorsPlansRecord(
          [void Function(MajorsPlansRecordBuilder)? updates]) =>
      (new MajorsPlansRecordBuilder()..update(updates))._build();

  _$MajorsPlansRecord._({this.link, this.major, this.ffRef}) : super._();

  @override
  MajorsPlansRecord rebuild(void Function(MajorsPlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MajorsPlansRecordBuilder toBuilder() =>
      new MajorsPlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MajorsPlansRecord &&
        link == other.link &&
        major == other.major &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, link.hashCode), major.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MajorsPlansRecord')
          ..add('link', link)
          ..add('major', major)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MajorsPlansRecordBuilder
    implements Builder<MajorsPlansRecord, MajorsPlansRecordBuilder> {
  _$MajorsPlansRecord? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _major;
  String? get major => _$this._major;
  set major(String? major) => _$this._major = major;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MajorsPlansRecordBuilder() {
    MajorsPlansRecord._initializeBuilder(this);
  }

  MajorsPlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _major = $v.major;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MajorsPlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MajorsPlansRecord;
  }

  @override
  void update(void Function(MajorsPlansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MajorsPlansRecord build() => _build();

  _$MajorsPlansRecord _build() {
    final _$result = _$v ??
        new _$MajorsPlansRecord._(link: link, major: major, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
