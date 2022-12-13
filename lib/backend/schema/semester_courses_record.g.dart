// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SemesterCoursesRecord> _$semesterCoursesRecordSerializer =
    new _$SemesterCoursesRecordSerializer();

class _$SemesterCoursesRecordSerializer
    implements StructuredSerializer<SemesterCoursesRecord> {
  @override
  final Iterable<Type> types = const [
    SemesterCoursesRecord,
    _$SemesterCoursesRecord
  ];
  @override
  final String wireName = 'SemesterCoursesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SemesterCoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.course;
    if (value != null) {
      result
        ..add('course')
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
  SemesterCoursesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SemesterCoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'course':
          result.course = serializers.deserialize(value,
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

class _$SemesterCoursesRecord extends SemesterCoursesRecord {
  @override
  final DocumentReference<Object?>? course;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SemesterCoursesRecord(
          [void Function(SemesterCoursesRecordBuilder)? updates]) =>
      (new SemesterCoursesRecordBuilder()..update(updates))._build();

  _$SemesterCoursesRecord._({this.course, this.ffRef}) : super._();

  @override
  SemesterCoursesRecord rebuild(
          void Function(SemesterCoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SemesterCoursesRecordBuilder toBuilder() =>
      new SemesterCoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SemesterCoursesRecord &&
        course == other.course &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, course.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SemesterCoursesRecord')
          ..add('course', course)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SemesterCoursesRecordBuilder
    implements Builder<SemesterCoursesRecord, SemesterCoursesRecordBuilder> {
  _$SemesterCoursesRecord? _$v;

  DocumentReference<Object?>? _course;
  DocumentReference<Object?>? get course => _$this._course;
  set course(DocumentReference<Object?>? course) => _$this._course = course;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SemesterCoursesRecordBuilder() {
    SemesterCoursesRecord._initializeBuilder(this);
  }

  SemesterCoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _course = $v.course;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SemesterCoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SemesterCoursesRecord;
  }

  @override
  void update(void Function(SemesterCoursesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SemesterCoursesRecord build() => _build();

  _$SemesterCoursesRecord _build() {
    final _$result =
        _$v ?? new _$SemesterCoursesRecord._(course: course, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
