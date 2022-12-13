// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentsRecord> _$studentsRecordSerializer =
    new _$StudentsRecordSerializer();

class _$StudentsRecordSerializer
    implements StructuredSerializer<StudentsRecord> {
  @override
  final Iterable<Type> types = const [StudentsRecord, _$StudentsRecord];
  @override
  final String wireName = 'StudentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StudentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fname;
    if (value != null) {
      result
        ..add('fname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gpa;
    if (value != null) {
      result
        ..add('gpa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lname;
    if (value != null) {
      result
        ..add('lname')
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
    value = object.mname;
    if (value != null) {
      result
        ..add('mname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nid;
    if (value != null) {
      result
        ..add('nid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phonenum;
    if (value != null) {
      result
        ..add('phonenum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.self;
    if (value != null) {
      result
        ..add('self')
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
    value = object.studentId;
    if (value != null) {
      result
        ..add('student_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeTable;
    if (value != null) {
      result
        ..add('time_table')
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
  StudentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fname':
          result.fname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gpa':
          result.gpa = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lname':
          result.lname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'major':
          result.major = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mname':
          result.mname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nid':
          result.nid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phonenum':
          result.phonenum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'self':
          result.self = serializers.deserialize(value,
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
        case 'student_id':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_table':
          result.timeTable.replace(serializers.deserialize(value,
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

class _$StudentsRecord extends StudentsRecord {
  @override
  final String? dob;
  @override
  final String? email;
  @override
  final String? fname;
  @override
  final double? gpa;
  @override
  final String? lname;
  @override
  final String? major;
  @override
  final String? mname;
  @override
  final String? nid;
  @override
  final String? password;
  @override
  final String? phonenum;
  @override
  final DocumentReference<Object?>? self;
  @override
  final DocumentReference<Object?>? advisor;
  @override
  final String? studentId;
  @override
  final BuiltList<DateTime>? timeTable;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentsRecord([void Function(StudentsRecordBuilder)? updates]) =>
      (new StudentsRecordBuilder()..update(updates))._build();

  _$StudentsRecord._(
      {this.dob,
      this.email,
      this.fname,
      this.gpa,
      this.lname,
      this.major,
      this.mname,
      this.nid,
      this.password,
      this.phonenum,
      this.self,
      this.advisor,
      this.studentId,
      this.timeTable,
      this.ffRef})
      : super._();

  @override
  StudentsRecord rebuild(void Function(StudentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentsRecordBuilder toBuilder() =>
      new StudentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentsRecord &&
        dob == other.dob &&
        email == other.email &&
        fname == other.fname &&
        gpa == other.gpa &&
        lname == other.lname &&
        major == other.major &&
        mname == other.mname &&
        nid == other.nid &&
        password == other.password &&
        phonenum == other.phonenum &&
        self == other.self &&
        advisor == other.advisor &&
        studentId == other.studentId &&
        timeTable == other.timeTable &&
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
                                                            $jc(0,
                                                                dob.hashCode),
                                                            email.hashCode),
                                                        fname.hashCode),
                                                    gpa.hashCode),
                                                lname.hashCode),
                                            major.hashCode),
                                        mname.hashCode),
                                    nid.hashCode),
                                password.hashCode),
                            phonenum.hashCode),
                        self.hashCode),
                    advisor.hashCode),
                studentId.hashCode),
            timeTable.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentsRecord')
          ..add('dob', dob)
          ..add('email', email)
          ..add('fname', fname)
          ..add('gpa', gpa)
          ..add('lname', lname)
          ..add('major', major)
          ..add('mname', mname)
          ..add('nid', nid)
          ..add('password', password)
          ..add('phonenum', phonenum)
          ..add('self', self)
          ..add('advisor', advisor)
          ..add('studentId', studentId)
          ..add('timeTable', timeTable)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentsRecordBuilder
    implements Builder<StudentsRecord, StudentsRecordBuilder> {
  _$StudentsRecord? _$v;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fname;
  String? get fname => _$this._fname;
  set fname(String? fname) => _$this._fname = fname;

  double? _gpa;
  double? get gpa => _$this._gpa;
  set gpa(double? gpa) => _$this._gpa = gpa;

  String? _lname;
  String? get lname => _$this._lname;
  set lname(String? lname) => _$this._lname = lname;

  String? _major;
  String? get major => _$this._major;
  set major(String? major) => _$this._major = major;

  String? _mname;
  String? get mname => _$this._mname;
  set mname(String? mname) => _$this._mname = mname;

  String? _nid;
  String? get nid => _$this._nid;
  set nid(String? nid) => _$this._nid = nid;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phonenum;
  String? get phonenum => _$this._phonenum;
  set phonenum(String? phonenum) => _$this._phonenum = phonenum;

  DocumentReference<Object?>? _self;
  DocumentReference<Object?>? get self => _$this._self;
  set self(DocumentReference<Object?>? self) => _$this._self = self;

  DocumentReference<Object?>? _advisor;
  DocumentReference<Object?>? get advisor => _$this._advisor;
  set advisor(DocumentReference<Object?>? advisor) => _$this._advisor = advisor;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  ListBuilder<DateTime>? _timeTable;
  ListBuilder<DateTime> get timeTable =>
      _$this._timeTable ??= new ListBuilder<DateTime>();
  set timeTable(ListBuilder<DateTime>? timeTable) =>
      _$this._timeTable = timeTable;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudentsRecordBuilder() {
    StudentsRecord._initializeBuilder(this);
  }

  StudentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dob = $v.dob;
      _email = $v.email;
      _fname = $v.fname;
      _gpa = $v.gpa;
      _lname = $v.lname;
      _major = $v.major;
      _mname = $v.mname;
      _nid = $v.nid;
      _password = $v.password;
      _phonenum = $v.phonenum;
      _self = $v.self;
      _advisor = $v.advisor;
      _studentId = $v.studentId;
      _timeTable = $v.timeTable?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentsRecord;
  }

  @override
  void update(void Function(StudentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentsRecord build() => _build();

  _$StudentsRecord _build() {
    _$StudentsRecord _$result;
    try {
      _$result = _$v ??
          new _$StudentsRecord._(
              dob: dob,
              email: email,
              fname: fname,
              gpa: gpa,
              lname: lname,
              major: major,
              mname: mname,
              nid: nid,
              password: password,
              phonenum: phonenum,
              self: self,
              advisor: advisor,
              studentId: studentId,
              timeTable: _timeTable?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeTable';
        _timeTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StudentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
