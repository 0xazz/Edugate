// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoursesRecord> _$coursesRecordSerializer =
    new _$CoursesRecordSerializer();

class _$CoursesRecordSerializer implements StructuredSerializer<CoursesRecord> {
  @override
  final Iterable<Type> types = const [CoursesRecord, _$CoursesRecord];
  @override
  final String wireName = 'CoursesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.courseid;
    if (value != null) {
      result
        ..add('courseid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coursename;
    if (value != null) {
      result
        ..add('coursename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.department;
    if (value != null) {
      result
        ..add('department')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hours;
    if (value != null) {
      result
        ..add('hours')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.self;
    if (value != null) {
      result
        ..add('self')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
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
  CoursesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'courseid':
          result.courseid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coursename':
          result.coursename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hours':
          result.hours = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
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

class _$CoursesRecord extends CoursesRecord {
  @override
  final String? courseid;
  @override
  final String? coursename;
  @override
  final String? department;
  @override
  final int? hours;
  @override
  final DocumentReference<Object?>? self;
  @override
  final String? description;
  @override
  final String? level;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoursesRecord([void Function(CoursesRecordBuilder)? updates]) =>
      (new CoursesRecordBuilder()..update(updates))._build();

  _$CoursesRecord._(
      {this.courseid,
      this.coursename,
      this.department,
      this.hours,
      this.self,
      this.description,
      this.level,
      this.ffRef})
      : super._();

  @override
  CoursesRecord rebuild(void Function(CoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesRecordBuilder toBuilder() => new CoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesRecord &&
        courseid == other.courseid &&
        coursename == other.coursename &&
        department == other.department &&
        hours == other.hours &&
        self == other.self &&
        description == other.description &&
        level == other.level &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, courseid.hashCode), coursename.hashCode),
                            department.hashCode),
                        hours.hashCode),
                    self.hashCode),
                description.hashCode),
            level.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoursesRecord')
          ..add('courseid', courseid)
          ..add('coursename', coursename)
          ..add('department', department)
          ..add('hours', hours)
          ..add('self', self)
          ..add('description', description)
          ..add('level', level)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoursesRecordBuilder
    implements Builder<CoursesRecord, CoursesRecordBuilder> {
  _$CoursesRecord? _$v;

  String? _courseid;
  String? get courseid => _$this._courseid;
  set courseid(String? courseid) => _$this._courseid = courseid;

  String? _coursename;
  String? get coursename => _$this._coursename;
  set coursename(String? coursename) => _$this._coursename = coursename;

  String? _department;
  String? get department => _$this._department;
  set department(String? department) => _$this._department = department;

  int? _hours;
  int? get hours => _$this._hours;
  set hours(int? hours) => _$this._hours = hours;

  DocumentReference<Object?>? _self;
  DocumentReference<Object?>? get self => _$this._self;
  set self(DocumentReference<Object?>? self) => _$this._self = self;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoursesRecordBuilder() {
    CoursesRecord._initializeBuilder(this);
  }

  CoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courseid = $v.courseid;
      _coursename = $v.coursename;
      _department = $v.department;
      _hours = $v.hours;
      _self = $v.self;
      _description = $v.description;
      _level = $v.level;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesRecord;
  }

  @override
  void update(void Function(CoursesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoursesRecord build() => _build();

  _$CoursesRecord _build() {
    final _$result = _$v ??
        new _$CoursesRecord._(
            courseid: courseid,
            coursename: coursename,
            department: department,
            hours: hours,
            self: self,
            description: description,
            level: level,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
