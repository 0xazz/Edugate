// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_events_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourseEventsRecord> _$courseEventsRecordSerializer =
    new _$CourseEventsRecordSerializer();

class _$CourseEventsRecordSerializer
    implements StructuredSerializer<CourseEventsRecord> {
  @override
  final Iterable<Type> types = const [CourseEventsRecord, _$CourseEventsRecord];
  @override
  final String wireName = 'CourseEventsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CourseEventsRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accept;
    if (value != null) {
      result
        ..add('accept')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reject;
    if (value != null) {
      result
        ..add('reject')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.datetime;
    if (value != null) {
      result
        ..add('datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CourseEventsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseEventsRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accept':
          result.accept = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reject':
          result.reject = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'datetime':
          result.datetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CourseEventsRecord extends CourseEventsRecord {
  @override
  final DocumentReference<Object?>? course;
  @override
  final String? description;
  @override
  final int? accept;
  @override
  final int? reject;
  @override
  final DateTime? datetime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CourseEventsRecord(
          [void Function(CourseEventsRecordBuilder)? updates]) =>
      (new CourseEventsRecordBuilder()..update(updates))._build();

  _$CourseEventsRecord._(
      {this.course,
      this.description,
      this.accept,
      this.reject,
      this.datetime,
      this.ffRef})
      : super._();

  @override
  CourseEventsRecord rebuild(
          void Function(CourseEventsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseEventsRecordBuilder toBuilder() =>
      new CourseEventsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseEventsRecord &&
        course == other.course &&
        description == other.description &&
        accept == other.accept &&
        reject == other.reject &&
        datetime == other.datetime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, course.hashCode), description.hashCode),
                    accept.hashCode),
                reject.hashCode),
            datetime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CourseEventsRecord')
          ..add('course', course)
          ..add('description', description)
          ..add('accept', accept)
          ..add('reject', reject)
          ..add('datetime', datetime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CourseEventsRecordBuilder
    implements Builder<CourseEventsRecord, CourseEventsRecordBuilder> {
  _$CourseEventsRecord? _$v;

  DocumentReference<Object?>? _course;
  DocumentReference<Object?>? get course => _$this._course;
  set course(DocumentReference<Object?>? course) => _$this._course = course;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _accept;
  int? get accept => _$this._accept;
  set accept(int? accept) => _$this._accept = accept;

  int? _reject;
  int? get reject => _$this._reject;
  set reject(int? reject) => _$this._reject = reject;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CourseEventsRecordBuilder() {
    CourseEventsRecord._initializeBuilder(this);
  }

  CourseEventsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _course = $v.course;
      _description = $v.description;
      _accept = $v.accept;
      _reject = $v.reject;
      _datetime = $v.datetime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseEventsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CourseEventsRecord;
  }

  @override
  void update(void Function(CourseEventsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CourseEventsRecord build() => _build();

  _$CourseEventsRecord _build() {
    final _$result = _$v ??
        new _$CourseEventsRecord._(
            course: course,
            description: description,
            accept: accept,
            reject: reject,
            datetime: datetime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
