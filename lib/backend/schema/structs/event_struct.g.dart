// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventStruct> _$eventStructSerializer = new _$EventStructSerializer();

class _$EventStructSerializer implements StructuredSerializer<EventStruct> {
  @override
  final Iterable<Type> types = const [EventStruct, _$EventStruct];
  @override
  final String wireName = 'EventStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventRef;
    if (value != null) {
      result
        ..add('event_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EventStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventStructBuilder();

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
        case 'event_ref':
          result.eventRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$EventStruct extends EventStruct {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? eventRef;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$EventStruct([void Function(EventStructBuilder)? updates]) =>
      (new EventStructBuilder()..update(updates))._build();

  _$EventStruct._({this.name, this.eventRef, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'EventStruct', 'firestoreUtilData');
  }

  @override
  EventStruct rebuild(void Function(EventStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStructBuilder toBuilder() => new EventStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStruct &&
        name == other.name &&
        eventRef == other.eventRef &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), eventRef.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStruct')
          ..add('name', name)
          ..add('eventRef', eventRef)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class EventStructBuilder implements Builder<EventStruct, EventStructBuilder> {
  _$EventStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _eventRef;
  DocumentReference<Object?>? get eventRef => _$this._eventRef;
  set eventRef(DocumentReference<Object?>? eventRef) =>
      _$this._eventRef = eventRef;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  EventStructBuilder() {
    EventStruct._initializeBuilder(this);
  }

  EventStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _eventRef = $v.eventRef;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventStruct;
  }

  @override
  void update(void Function(EventStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStruct build() => _build();

  _$EventStruct _build() {
    final _$result = _$v ??
        new _$EventStruct._(
            name: name,
            eventRef: eventRef,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'EventStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
