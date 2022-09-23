// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SocialStruct> _$socialStructSerializer =
    new _$SocialStructSerializer();

class _$SocialStructSerializer implements StructuredSerializer<SocialStruct> {
  @override
  final Iterable<Type> types = const [SocialStruct, _$SocialStruct];
  @override
  final String wireName = 'SocialStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, SocialStruct object,
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
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SocialStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialStructBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
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

class _$SocialStruct extends SocialStruct {
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? icon;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SocialStruct([void Function(SocialStructBuilder)? updates]) =>
      (new SocialStructBuilder()..update(updates))._build();

  _$SocialStruct._(
      {this.name, this.url, this.icon, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SocialStruct', 'firestoreUtilData');
  }

  @override
  SocialStruct rebuild(void Function(SocialStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialStructBuilder toBuilder() => new SocialStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialStruct &&
        name == other.name &&
        url == other.url &&
        icon == other.icon &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, name.hashCode), url.hashCode), icon.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialStruct')
          ..add('name', name)
          ..add('url', url)
          ..add('icon', icon)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SocialStructBuilder
    implements Builder<SocialStruct, SocialStructBuilder> {
  _$SocialStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SocialStructBuilder() {
    SocialStruct._initializeBuilder(this);
  }

  SocialStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _icon = $v.icon;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SocialStruct;
  }

  @override
  void update(void Function(SocialStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialStruct build() => _build();

  _$SocialStruct _build() {
    final _$result = _$v ??
        new _$SocialStruct._(
            name: name,
            url: url,
            icon: icon,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'SocialStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
