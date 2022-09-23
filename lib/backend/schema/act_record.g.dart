// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActRecord> _$actRecordSerializer = new _$ActRecordSerializer();

class _$ActRecordSerializer implements StructuredSerializer<ActRecord> {
  @override
  final Iterable<Type> types = const [ActRecord, _$ActRecord];
  @override
  final String wireName = 'ActRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'event',
      serializers.serialize(object.event,
          specifiedType: const FullType(EventStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compensation;
    if (value != null) {
      result
        ..add('compensation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.loadInTime;
    if (value != null) {
      result
        ..add('loadInTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.invites;
    if (value != null) {
      result
        ..add('invites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ActInviteStruct)])));
    }
    value = object.requests;
    if (value != null) {
      result
        ..add('requests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ActRequestStruct)])));
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
  ActRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'compensation':
          result.compensation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'loadInTime':
          result.loadInTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event':
          result.event.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventStruct))! as EventStruct);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'invites':
          result.invites.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActInviteStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'requests':
          result.requests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActRequestStruct)]))!
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

class _$ActRecord extends ActRecord {
  @override
  final String? name;
  @override
  final DateTime? startTime;
  @override
  final String? duration;
  @override
  final String? description;
  @override
  final double? compensation;
  @override
  final String? loadInTime;
  @override
  final EventStruct event;
  @override
  final String? status;
  @override
  final BuiltList<ActInviteStruct>? invites;
  @override
  final BuiltList<ActRequestStruct>? requests;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActRecord([void Function(ActRecordBuilder)? updates]) =>
      (new ActRecordBuilder()..update(updates))._build();

  _$ActRecord._(
      {this.name,
      this.startTime,
      this.duration,
      this.description,
      this.compensation,
      this.loadInTime,
      required this.event,
      this.status,
      this.invites,
      this.requests,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(event, r'ActRecord', 'event');
  }

  @override
  ActRecord rebuild(void Function(ActRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActRecordBuilder toBuilder() => new ActRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActRecord &&
        name == other.name &&
        startTime == other.startTime &&
        duration == other.duration &&
        description == other.description &&
        compensation == other.compensation &&
        loadInTime == other.loadInTime &&
        event == other.event &&
        status == other.status &&
        invites == other.invites &&
        requests == other.requests &&
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
                                        $jc($jc(0, name.hashCode),
                                            startTime.hashCode),
                                        duration.hashCode),
                                    description.hashCode),
                                compensation.hashCode),
                            loadInTime.hashCode),
                        event.hashCode),
                    status.hashCode),
                invites.hashCode),
            requests.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActRecord')
          ..add('name', name)
          ..add('startTime', startTime)
          ..add('duration', duration)
          ..add('description', description)
          ..add('compensation', compensation)
          ..add('loadInTime', loadInTime)
          ..add('event', event)
          ..add('status', status)
          ..add('invites', invites)
          ..add('requests', requests)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActRecordBuilder implements Builder<ActRecord, ActRecordBuilder> {
  _$ActRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _compensation;
  double? get compensation => _$this._compensation;
  set compensation(double? compensation) => _$this._compensation = compensation;

  String? _loadInTime;
  String? get loadInTime => _$this._loadInTime;
  set loadInTime(String? loadInTime) => _$this._loadInTime = loadInTime;

  EventStructBuilder? _event;
  EventStructBuilder get event => _$this._event ??= new EventStructBuilder();
  set event(EventStructBuilder? event) => _$this._event = event;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<ActInviteStruct>? _invites;
  ListBuilder<ActInviteStruct> get invites =>
      _$this._invites ??= new ListBuilder<ActInviteStruct>();
  set invites(ListBuilder<ActInviteStruct>? invites) =>
      _$this._invites = invites;

  ListBuilder<ActRequestStruct>? _requests;
  ListBuilder<ActRequestStruct> get requests =>
      _$this._requests ??= new ListBuilder<ActRequestStruct>();
  set requests(ListBuilder<ActRequestStruct>? requests) =>
      _$this._requests = requests;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActRecordBuilder() {
    ActRecord._initializeBuilder(this);
  }

  ActRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _startTime = $v.startTime;
      _duration = $v.duration;
      _description = $v.description;
      _compensation = $v.compensation;
      _loadInTime = $v.loadInTime;
      _event = $v.event.toBuilder();
      _status = $v.status;
      _invites = $v.invites?.toBuilder();
      _requests = $v.requests?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActRecord;
  }

  @override
  void update(void Function(ActRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActRecord build() => _build();

  _$ActRecord _build() {
    _$ActRecord _$result;
    try {
      _$result = _$v ??
          new _$ActRecord._(
              name: name,
              startTime: startTime,
              duration: duration,
              description: description,
              compensation: compensation,
              loadInTime: loadInTime,
              event: event.build(),
              status: status,
              invites: _invites?.build(),
              requests: _requests?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'event';
        event.build();

        _$failedField = 'invites';
        _invites?.build();
        _$failedField = 'requests';
        _requests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
