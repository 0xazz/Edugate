// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrolls_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnrollsRecord> _$enrollsRecordSerializer =
    new _$EnrollsRecordSerializer();

class _$EnrollsRecordSerializer implements StructuredSerializer<EnrollsRecord> {
  @override
  final Iterable<Type> types = const [EnrollsRecord, _$EnrollsRecord];
  @override
  final String wireName = 'EnrollsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnrollsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.absences;
    if (value != null) {
      result
        ..add('absences')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.letterGrade;
    if (value != null) {
      result
        ..add('letter_grade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  EnrollsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnrollsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'absences':
          result.absences = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'letter_grade':
          result.letterGrade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$EnrollsRecord extends EnrollsRecord {
  @override
  final int? absences;
  @override
  final DocumentReference<Object?>? course;
  @override
  final double? grade;
  @override
  final String? letterGrade;
  @override
  final DocumentReference<Object?>? section;
  @override
  final DocumentReference<Object?>? student;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnrollsRecord([void Function(EnrollsRecordBuilder)? updates]) =>
      (new EnrollsRecordBuilder()..update(updates))._build();

  _$EnrollsRecord._(
      {this.absences,
      this.course,
      this.grade,
      this.letterGrade,
      this.section,
      this.student,
      this.ffRef})
      : super._();

  @override
  EnrollsRecord rebuild(void Function(EnrollsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnrollsRecordBuilder toBuilder() => new EnrollsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnrollsRecord &&
        absences == other.absences &&
        course == other.course &&
        grade == other.grade &&
        letterGrade == other.letterGrade &&
        section == other.section &&
        student == other.student &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, absences.hashCode), course.hashCode),
                        grade.hashCode),
                    letterGrade.hashCode),
                section.hashCode),
            student.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnrollsRecord')
          ..add('absences', absences)
          ..add('course', course)
          ..add('grade', grade)
          ..add('letterGrade', letterGrade)
          ..add('section', section)
          ..add('student', student)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnrollsRecordBuilder
    implements Builder<EnrollsRecord, EnrollsRecordBuilder> {
  _$EnrollsRecord? _$v;

  int? _absences;
  int? get absences => _$this._absences;
  set absences(int? absences) => _$this._absences = absences;

  DocumentReference<Object?>? _course;
  DocumentReference<Object?>? get course => _$this._course;
  set course(DocumentReference<Object?>? course) => _$this._course = course;

  double? _grade;
  double? get grade => _$this._grade;
  set grade(double? grade) => _$this._grade = grade;

  String? _letterGrade;
  String? get letterGrade => _$this._letterGrade;
  set letterGrade(String? letterGrade) => _$this._letterGrade = letterGrade;

  DocumentReference<Object?>? _section;
  DocumentReference<Object?>? get section => _$this._section;
  set section(DocumentReference<Object?>? section) => _$this._section = section;

  DocumentReference<Object?>? _student;
  DocumentReference<Object?>? get student => _$this._student;
  set student(DocumentReference<Object?>? student) => _$this._student = student;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnrollsRecordBuilder() {
    EnrollsRecord._initializeBuilder(this);
  }

  EnrollsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _absences = $v.absences;
      _course = $v.course;
      _grade = $v.grade;
      _letterGrade = $v.letterGrade;
      _section = $v.section;
      _student = $v.student;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnrollsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnrollsRecord;
  }

  @override
  void update(void Function(EnrollsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnrollsRecord build() => _build();

  _$EnrollsRecord _build() {
    final _$result = _$v ??
        new _$EnrollsRecord._(
            absences: absences,
            course: course,
            grade: grade,
            letterGrade: letterGrade,
            section: section,
            student: student,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
