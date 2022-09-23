// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VenueStruct> _$venueStructSerializer = new _$VenueStructSerializer();

class _$VenueStructSerializer implements StructuredSerializer<VenueStruct> {
  @override
  final Iterable<Type> types = const [VenueStruct, _$VenueStruct];
  @override
  final String wireName = 'VenueStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, VenueStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.venueRef;
    if (value != null) {
      result
        ..add('venue_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VenueStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VenueStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'venue_ref':
          result.venueRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$VenueStruct extends VenueStruct {
  @override
  final DocumentReference<Object?>? venueRef;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$VenueStruct([void Function(VenueStructBuilder)? updates]) =>
      (new VenueStructBuilder()..update(updates))._build();

  _$VenueStruct._({this.venueRef, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'VenueStruct', 'firestoreUtilData');
  }

  @override
  VenueStruct rebuild(void Function(VenueStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VenueStructBuilder toBuilder() => new VenueStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VenueStruct &&
        venueRef == other.venueRef &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, venueRef.hashCode), name.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VenueStruct')
          ..add('venueRef', venueRef)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class VenueStructBuilder implements Builder<VenueStruct, VenueStructBuilder> {
  _$VenueStruct? _$v;

  DocumentReference<Object?>? _venueRef;
  DocumentReference<Object?>? get venueRef => _$this._venueRef;
  set venueRef(DocumentReference<Object?>? venueRef) =>
      _$this._venueRef = venueRef;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  VenueStructBuilder() {
    VenueStruct._initializeBuilder(this);
  }

  VenueStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _venueRef = $v.venueRef;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VenueStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VenueStruct;
  }

  @override
  void update(void Function(VenueStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VenueStruct build() => _build();

  _$VenueStruct _build() {
    final _$result = _$v ??
        new _$VenueStruct._(
            venueRef: venueRef,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'VenueStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
