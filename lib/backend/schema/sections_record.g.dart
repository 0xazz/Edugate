// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SectionsRecord> _$sectionsRecordSerializer =
    new _$SectionsRecordSerializer();

class _$SectionsRecordSerializer
    implements StructuredSerializer<SectionsRecord> {
  @override
  final Iterable<Type> types = const [SectionsRecord, _$SectionsRecord];
  @override
  final String wireName = 'SectionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SectionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.instructor;
    if (value != null) {
      result
        ..add('instructor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.sectionId;
    if (value != null) {
      result
        ..add('section_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.course;
    if (value != null) {
      result
        ..add('course')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxCapacity;
    if (value != null) {
      result
        ..add('max_capacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberOfStudents;
    if (value != null) {
      result
        ..add('number_of_students')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.place;
    if (value != null) {
      result
        ..add('place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.semester;
    if (value != null) {
      result
        ..add('semester')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.finalLocation;
    if (value != null) {
      result
        ..add('final_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.finalDate;
    if (value != null) {
      result
        ..add('final_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('date_time')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
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
  SectionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'instructor':
          result.instructor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'section_id':
          result.sectionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_capacity':
          result.maxCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'number_of_students':
          result.numberOfStudents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'semester':
          result.semester = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'final_location':
          result.finalLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'final_date':
          result.finalDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_time':
          result.dateTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
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

class _$SectionsRecord extends SectionsRecord {
  @override
  final DocumentReference<Object?>? instructor;
  @override
  final String? sectionId;
  @override
  final DocumentReference<Object?>? course;
  @override
  final String? days;
  @override
  final int? maxCapacity;
  @override
  final int? numberOfStudents;
  @override
  final String? place;
  @override
  final String? semester;
  @override
  final DateTime? time;
  @override
  final int? year;
  @override
  final String? finalLocation;
  @override
  final DateTime? finalDate;
  @override
  final BuiltList<DateTime>? dateTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SectionsRecord([void Function(SectionsRecordBuilder)? updates]) =>
      (new SectionsRecordBuilder()..update(updates))._build();

  _$SectionsRecord._(
      {this.instructor,
      this.sectionId,
      this.course,
      this.days,
      this.maxCapacity,
      this.numberOfStudents,
      this.place,
      this.semester,
      this.time,
      this.year,
      this.finalLocation,
      this.finalDate,
      this.dateTime,
      this.ffRef})
      : super._();

  @override
  SectionsRecord rebuild(void Function(SectionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionsRecordBuilder toBuilder() =>
      new SectionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionsRecord &&
        instructor == other.instructor &&
        sectionId == other.sectionId &&
        course == other.course &&
        days == other.days &&
        maxCapacity == other.maxCapacity &&
        numberOfStudents == other.numberOfStudents &&
        place == other.place &&
        semester == other.semester &&
        time == other.time &&
        year == other.year &&
        finalLocation == other.finalLocation &&
        finalDate == other.finalDate &&
        dateTime == other.dateTime &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            instructor
                                                                .hashCode),
                                                        sectionId.hashCode),
                                                    course.hashCode),
                                                days.hashCode),
                                            maxCapacity.hashCode),
                                        numberOfStudents.hashCode),
                                    place.hashCode),
                                semester.hashCode),
                            time.hashCode),
                        year.hashCode),
                    finalLocation.hashCode),
                finalDate.hashCode),
            dateTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SectionsRecord')
          ..add('instructor', instructor)
          ..add('sectionId', sectionId)
          ..add('course', course)
          ..add('days', days)
          ..add('maxCapacity', maxCapacity)
          ..add('numberOfStudents', numberOfStudents)
          ..add('place', place)
          ..add('semester', semester)
          ..add('time', time)
          ..add('year', year)
          ..add('finalLocation', finalLocation)
          ..add('finalDate', finalDate)
          ..add('dateTime', dateTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SectionsRecordBuilder
    implements Builder<SectionsRecord, SectionsRecordBuilder> {
  _$SectionsRecord? _$v;

  DocumentReference<Object?>? _instructor;
  DocumentReference<Object?>? get instructor => _$this._instructor;
  set instructor(DocumentReference<Object?>? instructor) =>
      _$this._instructor = instructor;

  String? _sectionId;
  String? get sectionId => _$this._sectionId;
  set sectionId(String? sectionId) => _$this._sectionId = sectionId;

  DocumentReference<Object?>? _course;
  DocumentReference<Object?>? get course => _$this._course;
  set course(DocumentReference<Object?>? course) => _$this._course = course;

  String? _days;
  String? get days => _$this._days;
  set days(String? days) => _$this._days = days;

  int? _maxCapacity;
  int? get maxCapacity => _$this._maxCapacity;
  set maxCapacity(int? maxCapacity) => _$this._maxCapacity = maxCapacity;

  int? _numberOfStudents;
  int? get numberOfStudents => _$this._numberOfStudents;
  set numberOfStudents(int? numberOfStudents) =>
      _$this._numberOfStudents = numberOfStudents;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _semester;
  String? get semester => _$this._semester;
  set semester(String? semester) => _$this._semester = semester;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _finalLocation;
  String? get finalLocation => _$this._finalLocation;
  set finalLocation(String? finalLocation) =>
      _$this._finalLocation = finalLocation;

  DateTime? _finalDate;
  DateTime? get finalDate => _$this._finalDate;
  set finalDate(DateTime? finalDate) => _$this._finalDate = finalDate;

  ListBuilder<DateTime>? _dateTime;
  ListBuilder<DateTime> get dateTime =>
      _$this._dateTime ??= new ListBuilder<DateTime>();
  set dateTime(ListBuilder<DateTime>? dateTime) => _$this._dateTime = dateTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SectionsRecordBuilder() {
    SectionsRecord._initializeBuilder(this);
  }

  SectionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instructor = $v.instructor;
      _sectionId = $v.sectionId;
      _course = $v.course;
      _days = $v.days;
      _maxCapacity = $v.maxCapacity;
      _numberOfStudents = $v.numberOfStudents;
      _place = $v.place;
      _semester = $v.semester;
      _time = $v.time;
      _year = $v.year;
      _finalLocation = $v.finalLocation;
      _finalDate = $v.finalDate;
      _dateTime = $v.dateTime?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SectionsRecord;
  }

  @override
  void update(void Function(SectionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SectionsRecord build() => _build();

  _$SectionsRecord _build() {
    _$SectionsRecord _$result;
    try {
      _$result = _$v ??
          new _$SectionsRecord._(
              instructor: instructor,
              sectionId: sectionId,
              course: course,
              days: days,
              maxCapacity: maxCapacity,
              numberOfStudents: numberOfStudents,
              place: place,
              semester: semester,
              time: time,
              year: year,
              finalLocation: finalLocation,
              finalDate: finalDate,
              dateTime: _dateTime?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dateTime';
        _dateTime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SectionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
