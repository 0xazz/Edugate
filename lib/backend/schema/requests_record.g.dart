// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestsRecord> _$requestsRecordSerializer =
    new _$RequestsRecordSerializer();

class _$RequestsRecordSerializer
    implements StructuredSerializer<RequestsRecord> {
  @override
  final Iterable<Type> types = const [RequestsRecord, _$RequestsRecord];
  @override
  final String wireName = 'RequestsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RequestsRecord object,
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
    value = object.oldMajor;
    if (value != null) {
      result
        ..add('old_major')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestStatus;
    if (value != null) {
      result
        ..add('request_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestedMajor;
    if (value != null) {
      result
        ..add('requested_major')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestType;
    if (value != null) {
      result
        ..add('request_type')
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
  RequestsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestsRecordBuilder();

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
        case 'old_major':
          result.oldMajor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'request_status':
          result.requestStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'requested_major':
          result.requestedMajor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'request_type':
          result.requestType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
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

class _$RequestsRecord extends RequestsRecord {
  @override
  final DocumentReference<Object?>? student;
  @override
  final String? oldMajor;
  @override
  final String? requestStatus;
  @override
  final String? requestedMajor;
  @override
  final String? requestType;
  @override
  final DocumentReference<Object?>? section;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RequestsRecord([void Function(RequestsRecordBuilder)? updates]) =>
      (new RequestsRecordBuilder()..update(updates))._build();

  _$RequestsRecord._(
      {this.student,
      this.oldMajor,
      this.requestStatus,
      this.requestedMajor,
      this.requestType,
      this.section,
      this.ffRef})
      : super._();

  @override
  RequestsRecord rebuild(void Function(RequestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestsRecordBuilder toBuilder() =>
      new RequestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestsRecord &&
        student == other.student &&
        oldMajor == other.oldMajor &&
        requestStatus == other.requestStatus &&
        requestedMajor == other.requestedMajor &&
        requestType == other.requestType &&
        section == other.section &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, student.hashCode), oldMajor.hashCode),
                        requestStatus.hashCode),
                    requestedMajor.hashCode),
                requestType.hashCode),
            section.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestsRecord')
          ..add('student', student)
          ..add('oldMajor', oldMajor)
          ..add('requestStatus', requestStatus)
          ..add('requestedMajor', requestedMajor)
          ..add('requestType', requestType)
          ..add('section', section)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RequestsRecordBuilder
    implements Builder<RequestsRecord, RequestsRecordBuilder> {
  _$RequestsRecord? _$v;

  DocumentReference<Object?>? _student;
  DocumentReference<Object?>? get student => _$this._student;
  set student(DocumentReference<Object?>? student) => _$this._student = student;

  String? _oldMajor;
  String? get oldMajor => _$this._oldMajor;
  set oldMajor(String? oldMajor) => _$this._oldMajor = oldMajor;

  String? _requestStatus;
  String? get requestStatus => _$this._requestStatus;
  set requestStatus(String? requestStatus) =>
      _$this._requestStatus = requestStatus;

  String? _requestedMajor;
  String? get requestedMajor => _$this._requestedMajor;
  set requestedMajor(String? requestedMajor) =>
      _$this._requestedMajor = requestedMajor;

  String? _requestType;
  String? get requestType => _$this._requestType;
  set requestType(String? requestType) => _$this._requestType = requestType;

  DocumentReference<Object?>? _section;
  DocumentReference<Object?>? get section => _$this._section;
  set section(DocumentReference<Object?>? section) => _$this._section = section;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RequestsRecordBuilder() {
    RequestsRecord._initializeBuilder(this);
  }

  RequestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _oldMajor = $v.oldMajor;
      _requestStatus = $v.requestStatus;
      _requestedMajor = $v.requestedMajor;
      _requestType = $v.requestType;
      _section = $v.section;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestsRecord;
  }

  @override
  void update(void Function(RequestsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestsRecord build() => _build();

  _$RequestsRecord _build() {
    final _$result = _$v ??
        new _$RequestsRecord._(
            student: student,
            oldMajor: oldMajor,
            requestStatus: requestStatus,
            requestedMajor: requestedMajor,
            requestType: requestType,
            section: section,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
