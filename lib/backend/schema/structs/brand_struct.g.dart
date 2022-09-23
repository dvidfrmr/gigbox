// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandStruct> _$brandStructSerializer = new _$BrandStructSerializer();

class _$BrandStructSerializer implements StructuredSerializer<BrandStruct> {
  @override
  final Iterable<Type> types = const [BrandStruct, _$BrandStruct];
  @override
  final String wireName = 'BrandStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, BrandStruct object,
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
    value = object.tagLine;
    if (value != null) {
      result
        ..add('tagLine')
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
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BrandStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandStructBuilder();

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
        case 'tagLine':
          result.tagLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
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

class _$BrandStruct extends BrandStruct {
  @override
  final String? name;
  @override
  final String? tagLine;
  @override
  final String? description;
  @override
  final String? logo;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$BrandStruct([void Function(BrandStructBuilder)? updates]) =>
      (new BrandStructBuilder()..update(updates))._build();

  _$BrandStruct._(
      {this.name,
      this.tagLine,
      this.description,
      this.logo,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'BrandStruct', 'firestoreUtilData');
  }

  @override
  BrandStruct rebuild(void Function(BrandStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandStructBuilder toBuilder() => new BrandStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandStruct &&
        name == other.name &&
        tagLine == other.tagLine &&
        description == other.description &&
        logo == other.logo &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), tagLine.hashCode),
                description.hashCode),
            logo.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BrandStruct')
          ..add('name', name)
          ..add('tagLine', tagLine)
          ..add('description', description)
          ..add('logo', logo)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class BrandStructBuilder implements Builder<BrandStruct, BrandStructBuilder> {
  _$BrandStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _tagLine;
  String? get tagLine => _$this._tagLine;
  set tagLine(String? tagLine) => _$this._tagLine = tagLine;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  BrandStructBuilder() {
    BrandStruct._initializeBuilder(this);
  }

  BrandStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _tagLine = $v.tagLine;
      _description = $v.description;
      _logo = $v.logo;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BrandStruct;
  }

  @override
  void update(void Function(BrandStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BrandStruct build() => _build();

  _$BrandStruct _build() {
    final _$result = _$v ??
        new _$BrandStruct._(
            name: name,
            tagLine: tagLine,
            description: description,
            logo: logo,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'BrandStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
