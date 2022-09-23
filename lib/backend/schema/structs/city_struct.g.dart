// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CityStruct> _$cityStructSerializer = new _$CityStructSerializer();

class _$CityStructSerializer implements StructuredSerializer<CityStruct> {
  @override
  final Iterable<Type> types = const [CityStruct, _$CityStruct];
  @override
  final String wireName = 'CityStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, CityStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.cityRef;
    if (value != null) {
      result
        ..add('city_ref')
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
  CityStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city_ref':
          result.cityRef = serializers.deserialize(value,
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

class _$CityStruct extends CityStruct {
  @override
  final DocumentReference<Object?>? cityRef;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CityStruct([void Function(CityStructBuilder)? updates]) =>
      (new CityStructBuilder()..update(updates))._build();

  _$CityStruct._({this.cityRef, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CityStruct', 'firestoreUtilData');
  }

  @override
  CityStruct rebuild(void Function(CityStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityStructBuilder toBuilder() => new CityStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityStruct &&
        cityRef == other.cityRef &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, cityRef.hashCode), name.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CityStruct')
          ..add('cityRef', cityRef)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CityStructBuilder implements Builder<CityStruct, CityStructBuilder> {
  _$CityStruct? _$v;

  DocumentReference<Object?>? _cityRef;
  DocumentReference<Object?>? get cityRef => _$this._cityRef;
  set cityRef(DocumentReference<Object?>? cityRef) => _$this._cityRef = cityRef;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CityStructBuilder() {
    CityStruct._initializeBuilder(this);
  }

  CityStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cityRef = $v.cityRef;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CityStruct;
  }

  @override
  void update(void Function(CityStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CityStruct build() => _build();

  _$CityStruct _build() {
    final _$result = _$v ??
        new _$CityStruct._(
            cityRef: cityRef,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'CityStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
