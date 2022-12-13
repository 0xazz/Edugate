// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advises_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdvisesRecord> _$advisesRecordSerializer =
    new _$AdvisesRecordSerializer();

class _$AdvisesRecordSerializer implements StructuredSerializer<AdvisesRecord> {
  @override
  final Iterable<Type> types = const [AdvisesRecord, _$AdvisesRecord];
  @override
  final String wireName = 'AdvisesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AdvisesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.advisee;
    if (value != null) {
      result
        ..add('advisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.advisor;
    if (value != null) {
      result
        ..add('advisor')
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
  AdvisesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdvisesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'advisee':
          result.advisee = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'advisor':
          result.advisor = serializers.deserialize(value,
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

class _$AdvisesRecord extends AdvisesRecord {
  @override
  final DocumentReference<Object?>? advisee;
  @override
  final DocumentReference<Object?>? advisor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AdvisesRecord([void Function(AdvisesRecordBuilder)? updates]) =>
      (new AdvisesRecordBuilder()..update(updates))._build();

  _$AdvisesRecord._({this.advisee, this.advisor, this.ffRef}) : super._();

  @override
  AdvisesRecord rebuild(void Function(AdvisesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisesRecordBuilder toBuilder() => new AdvisesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisesRecord &&
        advisee == other.advisee &&
        advisor == other.advisor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, advisee.hashCode), advisor.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdvisesRecord')
          ..add('advisee', advisee)
          ..add('advisor', advisor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AdvisesRecordBuilder
    implements Builder<AdvisesRecord, AdvisesRecordBuilder> {
  _$AdvisesRecord? _$v;

  DocumentReference<Object?>? _advisee;
  DocumentReference<Object?>? get advisee => _$this._advisee;
  set advisee(DocumentReference<Object?>? advisee) => _$this._advisee = advisee;

  DocumentReference<Object?>? _advisor;
  DocumentReference<Object?>? get advisor => _$this._advisor;
  set advisor(DocumentReference<Object?>? advisor) => _$this._advisor = advisor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AdvisesRecordBuilder() {
    AdvisesRecord._initializeBuilder(this);
  }

  AdvisesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _advisee = $v.advisee;
      _advisor = $v.advisor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisesRecord;
  }

  @override
  void update(void Function(AdvisesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisesRecord build() => _build();

  _$AdvisesRecord _build() {
    final _$result = _$v ??
        new _$AdvisesRecord._(advisee: advisee, advisor: advisor, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
