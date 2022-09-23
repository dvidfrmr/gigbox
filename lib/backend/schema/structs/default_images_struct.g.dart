// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_images_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefaultImagesStruct> _$defaultImagesStructSerializer =
    new _$DefaultImagesStructSerializer();

class _$DefaultImagesStructSerializer
    implements StructuredSerializer<DefaultImagesStruct> {
  @override
  final Iterable<Type> types = const [
    DefaultImagesStruct,
    _$DefaultImagesStruct
  ];
  @override
  final String wireName = 'DefaultImagesStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DefaultImagesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageLoading;
    if (value != null) {
      result
        ..add('imageLoading')
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
  DefaultImagesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefaultImagesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageLoading':
          result.imageLoading = serializers.deserialize(value,
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

class _$DefaultImagesStruct extends DefaultImagesStruct {
  @override
  final String? avatar;
  @override
  final String? cover;
  @override
  final String? image;
  @override
  final String? imageLoading;
  @override
  final String? icon;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DefaultImagesStruct(
          [void Function(DefaultImagesStructBuilder)? updates]) =>
      (new DefaultImagesStructBuilder()..update(updates))._build();

  _$DefaultImagesStruct._(
      {this.avatar,
      this.cover,
      this.image,
      this.imageLoading,
      this.icon,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'DefaultImagesStruct', 'firestoreUtilData');
  }

  @override
  DefaultImagesStruct rebuild(
          void Function(DefaultImagesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultImagesStructBuilder toBuilder() =>
      new DefaultImagesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultImagesStruct &&
        avatar == other.avatar &&
        cover == other.cover &&
        image == other.image &&
        imageLoading == other.imageLoading &&
        icon == other.icon &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, avatar.hashCode), cover.hashCode),
                    image.hashCode),
                imageLoading.hashCode),
            icon.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultImagesStruct')
          ..add('avatar', avatar)
          ..add('cover', cover)
          ..add('image', image)
          ..add('imageLoading', imageLoading)
          ..add('icon', icon)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DefaultImagesStructBuilder
    implements Builder<DefaultImagesStruct, DefaultImagesStructBuilder> {
  _$DefaultImagesStruct? _$v;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _imageLoading;
  String? get imageLoading => _$this._imageLoading;
  set imageLoading(String? imageLoading) => _$this._imageLoading = imageLoading;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DefaultImagesStructBuilder() {
    DefaultImagesStruct._initializeBuilder(this);
  }

  DefaultImagesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _avatar = $v.avatar;
      _cover = $v.cover;
      _image = $v.image;
      _imageLoading = $v.imageLoading;
      _icon = $v.icon;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultImagesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultImagesStruct;
  }

  @override
  void update(void Function(DefaultImagesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultImagesStruct build() => _build();

  _$DefaultImagesStruct _build() {
    final _$result = _$v ??
        new _$DefaultImagesStruct._(
            avatar: avatar,
            cover: cover,
            image: image,
            imageLoading: imageLoading,
            icon: icon,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'DefaultImagesStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
