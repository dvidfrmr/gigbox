// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_request_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActRequestStruct> _$actRequestStructSerializer =
    new _$ActRequestStructSerializer();

class _$ActRequestStructSerializer
    implements StructuredSerializer<ActRequestStruct> {
  @override
  final Iterable<Type> types = const [ActRequestStruct, _$ActRequestStruct];
  @override
  final String wireName = 'ActRequestStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActRequestStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.dateTime;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.act;
    if (value != null) {
      result
        ..add('act')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.band;
    if (value != null) {
      result
        ..add('band')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ActRequestStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActRequestStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'act':
          result.act = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'band':
          result.band = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ActRequestStruct extends ActRequestStruct {
  @override
  final DateTime? dateTime;
  @override
  final DocumentReference<Object?>? act;
  @override
  final DocumentReference<Object?>? band;
  @override
  final String? status;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ActRequestStruct(
          [void Function(ActRequestStructBuilder)? updates]) =>
      (new ActRequestStructBuilder()..update(updates))._build();

  _$ActRequestStruct._(
      {this.dateTime,
      this.act,
      this.band,
      this.status,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ActRequestStruct', 'firestoreUtilData');
  }

  @override
  ActRequestStruct rebuild(void Function(ActRequestStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActRequestStructBuilder toBuilder() =>
      new ActRequestStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActRequestStruct &&
        dateTime == other.dateTime &&
        act == other.act &&
        band == other.band &&
        status == other.status &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, dateTime.hashCode), act.hashCode), band.hashCode),
            status.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActRequestStruct')
          ..add('dateTime', dateTime)
          ..add('act', act)
          ..add('band', band)
          ..add('status', status)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ActRequestStructBuilder
    implements Builder<ActRequestStruct, ActRequestStructBuilder> {
  _$ActRequestStruct? _$v;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DocumentReference<Object?>? _act;
  DocumentReference<Object?>? get act => _$this._act;
  set act(DocumentReference<Object?>? act) => _$this._act = act;

  DocumentReference<Object?>? _band;
  DocumentReference<Object?>? get band => _$this._band;
  set band(DocumentReference<Object?>? band) => _$this._band = band;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ActRequestStructBuilder() {
    ActRequestStruct._initializeBuilder(this);
  }

  ActRequestStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateTime = $v.dateTime;
      _act = $v.act;
      _band = $v.band;
      _status = $v.status;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActRequestStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActRequestStruct;
  }

  @override
  void update(void Function(ActRequestStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActRequestStruct build() => _build();

  _$ActRequestStruct _build() {
    final _$result = _$v ??
        new _$ActRequestStruct._(
            dateTime: dateTime,
            act: act,
            band: band,
            status: status,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ActRequestStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
