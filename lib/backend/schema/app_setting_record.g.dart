// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppSettingRecord> _$appSettingRecordSerializer =
    new _$AppSettingRecordSerializer();

class _$AppSettingRecordSerializer
    implements StructuredSerializer<AppSettingRecord> {
  @override
  final Iterable<Type> types = const [AppSettingRecord, _$AppSettingRecord];
  @override
  final String wireName = 'AppSettingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppSettingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(BrandStruct)),
      'defaultImages',
      serializers.serialize(object.defaultImages,
          specifiedType: const FullType(DefaultImagesStruct)),
    ];
    Object? value;
    value = object.anonUserOn;
    if (value != null) {
      result
        ..add('anonUserOn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AppSettingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppSettingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandStruct))! as BrandStruct);
          break;
        case 'defaultImages':
          result.defaultImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DefaultImagesStruct))!
              as DefaultImagesStruct);
          break;
        case 'anonUserOn':
          result.anonUserOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AppSettingRecord extends AppSettingRecord {
  @override
  final BrandStruct brand;
  @override
  final DefaultImagesStruct defaultImages;
  @override
  final bool? anonUserOn;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppSettingRecord(
          [void Function(AppSettingRecordBuilder)? updates]) =>
      (new AppSettingRecordBuilder()..update(updates))._build();

  _$AppSettingRecord._(
      {required this.brand,
      required this.defaultImages,
      this.anonUserOn,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(brand, r'AppSettingRecord', 'brand');
    BuiltValueNullFieldError.checkNotNull(
        defaultImages, r'AppSettingRecord', 'defaultImages');
  }

  @override
  AppSettingRecord rebuild(void Function(AppSettingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppSettingRecordBuilder toBuilder() =>
      new AppSettingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppSettingRecord &&
        brand == other.brand &&
        defaultImages == other.defaultImages &&
        anonUserOn == other.anonUserOn &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, brand.hashCode), defaultImages.hashCode),
            anonUserOn.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppSettingRecord')
          ..add('brand', brand)
          ..add('defaultImages', defaultImages)
          ..add('anonUserOn', anonUserOn)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppSettingRecordBuilder
    implements Builder<AppSettingRecord, AppSettingRecordBuilder> {
  _$AppSettingRecord? _$v;

  BrandStructBuilder? _brand;
  BrandStructBuilder get brand => _$this._brand ??= new BrandStructBuilder();
  set brand(BrandStructBuilder? brand) => _$this._brand = brand;

  DefaultImagesStructBuilder? _defaultImages;
  DefaultImagesStructBuilder get defaultImages =>
      _$this._defaultImages ??= new DefaultImagesStructBuilder();
  set defaultImages(DefaultImagesStructBuilder? defaultImages) =>
      _$this._defaultImages = defaultImages;

  bool? _anonUserOn;
  bool? get anonUserOn => _$this._anonUserOn;
  set anonUserOn(bool? anonUserOn) => _$this._anonUserOn = anonUserOn;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppSettingRecordBuilder() {
    AppSettingRecord._initializeBuilder(this);
  }

  AppSettingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _brand = $v.brand.toBuilder();
      _defaultImages = $v.defaultImages.toBuilder();
      _anonUserOn = $v.anonUserOn;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppSettingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppSettingRecord;
  }

  @override
  void update(void Function(AppSettingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppSettingRecord build() => _build();

  _$AppSettingRecord _build() {
    _$AppSettingRecord _$result;
    try {
      _$result = _$v ??
          new _$AppSettingRecord._(
              brand: brand.build(),
              defaultImages: defaultImages.build(),
              anonUserOn: anonUserOn,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'brand';
        brand.build();
        _$failedField = 'defaultImages';
        defaultImages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppSettingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
