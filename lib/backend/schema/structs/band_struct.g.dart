// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'band_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BandStruct> _$bandStructSerializer = new _$BandStructSerializer();

class _$BandStructSerializer implements StructuredSerializer<BandStruct> {
  @override
  final Iterable<Type> types = const [BandStruct, _$BandStruct];
  @override
  final String wireName = 'BandStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, BandStruct object,
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
    value = object.bandRef;
    if (value != null) {
      result
        ..add('band_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BandStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BandStructBuilder();

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
        case 'band_ref':
          result.bandRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$BandStruct extends BandStruct {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? bandRef;
  @override
  final String? image;
  @override
  final String? type;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$BandStruct([void Function(BandStructBuilder)? updates]) =>
      (new BandStructBuilder()..update(updates))._build();

  _$BandStruct._(
      {this.name,
      this.bandRef,
      this.image,
      this.type,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'BandStruct', 'firestoreUtilData');
  }

  @override
  BandStruct rebuild(void Function(BandStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BandStructBuilder toBuilder() => new BandStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BandStruct &&
        name == other.name &&
        bandRef == other.bandRef &&
        image == other.image &&
        type == other.type &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), bandRef.hashCode), image.hashCode),
            type.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BandStruct')
          ..add('name', name)
          ..add('bandRef', bandRef)
          ..add('image', image)
          ..add('type', type)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class BandStructBuilder implements Builder<BandStruct, BandStructBuilder> {
  _$BandStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _bandRef;
  DocumentReference<Object?>? get bandRef => _$this._bandRef;
  set bandRef(DocumentReference<Object?>? bandRef) => _$this._bandRef = bandRef;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  BandStructBuilder() {
    BandStruct._initializeBuilder(this);
  }

  BandStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _bandRef = $v.bandRef;
      _image = $v.image;
      _type = $v.type;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BandStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BandStruct;
  }

  @override
  void update(void Function(BandStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BandStruct build() => _build();

  _$BandStruct _build() {
    final _$result = _$v ??
        new _$BandStruct._(
            name: name,
            bandRef: bandRef,
            image: image,
            type: type,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'BandStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
