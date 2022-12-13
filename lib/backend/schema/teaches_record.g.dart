// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teaches_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeachesRecord> _$teachesRecordSerializer =
    new _$TeachesRecordSerializer();

class _$TeachesRecordSerializer implements StructuredSerializer<TeachesRecord> {
  @override
  final Iterable<Type> types = const [TeachesRecord, _$TeachesRecord];
  @override
  final String wireName = 'TeachesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeachesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.instructor;
    if (value != null) {
      result
        ..add('instructor')
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
  TeachesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeachesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'instructor':
          result.instructor = serializers.deserialize(value,
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

class _$TeachesRecord extends TeachesRecord {
  @override
  final DocumentReference<Object?>? section;
  @override
  final DocumentReference<Object?>? instructor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TeachesRecord([void Function(TeachesRecordBuilder)? updates]) =>
      (new TeachesRecordBuilder()..update(updates))._build();

  _$TeachesRecord._({this.section, this.instructor, this.ffRef}) : super._();

  @override
  TeachesRecord rebuild(void Function(TeachesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeachesRecordBuilder toBuilder() => new TeachesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeachesRecord &&
        section == other.section &&
        instructor == other.instructor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, section.hashCode), instructor.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeachesRecord')
          ..add('section', section)
          ..add('instructor', instructor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TeachesRecordBuilder
    implements Builder<TeachesRecord, TeachesRecordBuilder> {
  _$TeachesRecord? _$v;

  DocumentReference<Object?>? _section;
  DocumentReference<Object?>? get section => _$this._section;
  set section(DocumentReference<Object?>? section) => _$this._section = section;

  DocumentReference<Object?>? _instructor;
  DocumentReference<Object?>? get instructor => _$this._instructor;
  set instructor(DocumentReference<Object?>? instructor) =>
      _$this._instructor = instructor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TeachesRecordBuilder() {
    TeachesRecord._initializeBuilder(this);
  }

  TeachesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _section = $v.section;
      _instructor = $v.instructor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeachesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeachesRecord;
  }

  @override
  void update(void Function(TeachesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeachesRecord build() => _build();

  _$TeachesRecord _build() {
    final _$result = _$v ??
        new _$TeachesRecord._(
            section: section, instructor: instructor, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
