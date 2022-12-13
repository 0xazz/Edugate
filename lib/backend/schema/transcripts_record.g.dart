// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcripts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TranscriptsRecord> _$transcriptsRecordSerializer =
    new _$TranscriptsRecordSerializer();

class _$TranscriptsRecordSerializer
    implements StructuredSerializer<TranscriptsRecord> {
  @override
  final Iterable<Type> types = const [TranscriptsRecord, _$TranscriptsRecord];
  @override
  final String wireName = 'TranscriptsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TranscriptsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.student;
    if (value != null) {
      result
        ..add('student')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.course;
    if (value != null) {
      result
        ..add('course')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.grade;
    if (value != null) {
      result
        ..add('grade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.scaledgrade;
    if (value != null) {
      result
        ..add('scaledgrade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  TranscriptsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranscriptsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'student':
          result.student = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'scaledgrade':
          result.scaledgrade = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$TranscriptsRecord extends TranscriptsRecord {
  @override
  final DocumentReference<Object?>? student;
  @override
  final DocumentReference<Object?>? course;
  @override
  final int? grade;
  @override
  final double? scaledgrade;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TranscriptsRecord(
          [void Function(TranscriptsRecordBuilder)? updates]) =>
      (new TranscriptsRecordBuilder()..update(updates))._build();

  _$TranscriptsRecord._(
      {this.student, this.course, this.grade, this.scaledgrade, this.ffRef})
      : super._();

  @override
  TranscriptsRecord rebuild(void Function(TranscriptsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranscriptsRecordBuilder toBuilder() =>
      new TranscriptsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranscriptsRecord &&
        student == other.student &&
        course == other.course &&
        grade == other.grade &&
        scaledgrade == other.scaledgrade &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, student.hashCode), course.hashCode), grade.hashCode),
            scaledgrade.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranscriptsRecord')
          ..add('student', student)
          ..add('course', course)
          ..add('grade', grade)
          ..add('scaledgrade', scaledgrade)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TranscriptsRecordBuilder
    implements Builder<TranscriptsRecord, TranscriptsRecordBuilder> {
  _$TranscriptsRecord? _$v;

  DocumentReference<Object?>? _student;
  DocumentReference<Object?>? get student => _$this._student;
  set student(DocumentReference<Object?>? student) => _$this._student = student;

  DocumentReference<Object?>? _course;
  DocumentReference<Object?>? get course => _$this._course;
  set course(DocumentReference<Object?>? course) => _$this._course = course;

  int? _grade;
  int? get grade => _$this._grade;
  set grade(int? grade) => _$this._grade = grade;

  double? _scaledgrade;
  double? get scaledgrade => _$this._scaledgrade;
  set scaledgrade(double? scaledgrade) => _$this._scaledgrade = scaledgrade;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TranscriptsRecordBuilder() {
    TranscriptsRecord._initializeBuilder(this);
  }

  TranscriptsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _course = $v.course;
      _grade = $v.grade;
      _scaledgrade = $v.scaledgrade;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranscriptsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranscriptsRecord;
  }

  @override
  void update(void Function(TranscriptsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranscriptsRecord build() => _build();

  _$TranscriptsRecord _build() {
    final _$result = _$v ??
        new _$TranscriptsRecord._(
            student: student,
            course: course,
            grade: grade,
            scaledgrade: scaledgrade,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
