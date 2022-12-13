// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScheduleRecord> _$scheduleRecordSerializer =
    new _$ScheduleRecordSerializer();

class _$ScheduleRecordSerializer
    implements StructuredSerializer<ScheduleRecord> {
  @override
  final Iterable<Type> types = const [ScheduleRecord, _$ScheduleRecord];
  @override
  final String wireName = 'ScheduleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScheduleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.studentId;
    if (value != null) {
      result
        ..add('studentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regCourses;
    if (value != null) {
      result
        ..add('regCourses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  ScheduleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'studentId':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regCourses':
          result.regCourses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$ScheduleRecord extends ScheduleRecord {
  @override
  final String? studentId;
  @override
  final BuiltList<DocumentReference<Object?>>? regCourses;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScheduleRecord([void Function(ScheduleRecordBuilder)? updates]) =>
      (new ScheduleRecordBuilder()..update(updates))._build();

  _$ScheduleRecord._({this.studentId, this.regCourses, this.ffRef}) : super._();

  @override
  ScheduleRecord rebuild(void Function(ScheduleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleRecordBuilder toBuilder() =>
      new ScheduleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleRecord &&
        studentId == other.studentId &&
        regCourses == other.regCourses &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, studentId.hashCode), regCourses.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleRecord')
          ..add('studentId', studentId)
          ..add('regCourses', regCourses)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScheduleRecordBuilder
    implements Builder<ScheduleRecord, ScheduleRecordBuilder> {
  _$ScheduleRecord? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  ListBuilder<DocumentReference<Object?>>? _regCourses;
  ListBuilder<DocumentReference<Object?>> get regCourses =>
      _$this._regCourses ??= new ListBuilder<DocumentReference<Object?>>();
  set regCourses(ListBuilder<DocumentReference<Object?>>? regCourses) =>
      _$this._regCourses = regCourses;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScheduleRecordBuilder() {
    ScheduleRecord._initializeBuilder(this);
  }

  ScheduleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _regCourses = $v.regCourses?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduleRecord;
  }

  @override
  void update(void Function(ScheduleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleRecord build() => _build();

  _$ScheduleRecord _build() {
    _$ScheduleRecord _$result;
    try {
      _$result = _$v ??
          new _$ScheduleRecord._(
              studentId: studentId,
              regCourses: _regCourses?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regCourses';
        _regCourses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduleRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
