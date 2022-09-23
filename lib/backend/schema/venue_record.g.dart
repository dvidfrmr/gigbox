// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VenueRecord> _$venueRecordSerializer = new _$VenueRecordSerializer();

class _$VenueRecordSerializer implements StructuredSerializer<VenueRecord> {
  @override
  final Iterable<Type> types = const [VenueRecord, _$VenueRecord];
  @override
  final String wireName = 'VenueRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VenueRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressStruct)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(UserStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
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
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.stagePower;
    if (value != null) {
      result
        ..add('stage_power')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.soundSetupInfo;
    if (value != null) {
      result
        ..add('sound_setup_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stagePlot;
    if (value != null) {
      result
        ..add('stage_plot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loadinArea;
    if (value != null) {
      result
        ..add('loadin_area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.socials;
    if (value != null) {
      result
        ..add('socials')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SocialStruct)])));
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
  VenueRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VenueRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserStruct))! as UserStruct);
          break;
        case 'stage_power':
          result.stagePower = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sound_setup_info':
          result.soundSetupInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stage_plot':
          result.stagePlot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loadin_area':
          result.loadinArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'socials':
          result.socials.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SocialStruct)]))!
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

class _$VenueRecord extends VenueRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? phone;
  @override
  final String? cover;
  @override
  final BuiltList<String>? images;
  @override
  final AddressStruct address;
  @override
  final UserStruct owner;
  @override
  final String? stagePower;
  @override
  final String? soundSetupInfo;
  @override
  final String? stagePlot;
  @override
  final String? loadinArea;
  @override
  final BuiltList<SocialStruct>? socials;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VenueRecord([void Function(VenueRecordBuilder)? updates]) =>
      (new VenueRecordBuilder()..update(updates))._build();

  _$VenueRecord._(
      {this.name,
      this.description,
      this.phone,
      this.cover,
      this.images,
      required this.address,
      required this.owner,
      this.stagePower,
      this.soundSetupInfo,
      this.stagePlot,
      this.loadinArea,
      this.socials,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'VenueRecord', 'address');
    BuiltValueNullFieldError.checkNotNull(owner, r'VenueRecord', 'owner');
  }

  @override
  VenueRecord rebuild(void Function(VenueRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VenueRecordBuilder toBuilder() => new VenueRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VenueRecord &&
        name == other.name &&
        description == other.description &&
        phone == other.phone &&
        cover == other.cover &&
        images == other.images &&
        address == other.address &&
        owner == other.owner &&
        stagePower == other.stagePower &&
        soundSetupInfo == other.soundSetupInfo &&
        stagePlot == other.stagePlot &&
        loadinArea == other.loadinArea &&
        socials == other.socials &&
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
                                        $jc(
                                            $jc(
                                                $jc($jc(0, name.hashCode),
                                                    description.hashCode),
                                                phone.hashCode),
                                            cover.hashCode),
                                        images.hashCode),
                                    address.hashCode),
                                owner.hashCode),
                            stagePower.hashCode),
                        soundSetupInfo.hashCode),
                    stagePlot.hashCode),
                loadinArea.hashCode),
            socials.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VenueRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('phone', phone)
          ..add('cover', cover)
          ..add('images', images)
          ..add('address', address)
          ..add('owner', owner)
          ..add('stagePower', stagePower)
          ..add('soundSetupInfo', soundSetupInfo)
          ..add('stagePlot', stagePlot)
          ..add('loadinArea', loadinArea)
          ..add('socials', socials)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VenueRecordBuilder implements Builder<VenueRecord, VenueRecordBuilder> {
  _$VenueRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  AddressStructBuilder? _address;
  AddressStructBuilder get address =>
      _$this._address ??= new AddressStructBuilder();
  set address(AddressStructBuilder? address) => _$this._address = address;

  UserStructBuilder? _owner;
  UserStructBuilder get owner => _$this._owner ??= new UserStructBuilder();
  set owner(UserStructBuilder? owner) => _$this._owner = owner;

  String? _stagePower;
  String? get stagePower => _$this._stagePower;
  set stagePower(String? stagePower) => _$this._stagePower = stagePower;

  String? _soundSetupInfo;
  String? get soundSetupInfo => _$this._soundSetupInfo;
  set soundSetupInfo(String? soundSetupInfo) =>
      _$this._soundSetupInfo = soundSetupInfo;

  String? _stagePlot;
  String? get stagePlot => _$this._stagePlot;
  set stagePlot(String? stagePlot) => _$this._stagePlot = stagePlot;

  String? _loadinArea;
  String? get loadinArea => _$this._loadinArea;
  set loadinArea(String? loadinArea) => _$this._loadinArea = loadinArea;

  ListBuilder<SocialStruct>? _socials;
  ListBuilder<SocialStruct> get socials =>
      _$this._socials ??= new ListBuilder<SocialStruct>();
  set socials(ListBuilder<SocialStruct>? socials) => _$this._socials = socials;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VenueRecordBuilder() {
    VenueRecord._initializeBuilder(this);
  }

  VenueRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _phone = $v.phone;
      _cover = $v.cover;
      _images = $v.images?.toBuilder();
      _address = $v.address.toBuilder();
      _owner = $v.owner.toBuilder();
      _stagePower = $v.stagePower;
      _soundSetupInfo = $v.soundSetupInfo;
      _stagePlot = $v.stagePlot;
      _loadinArea = $v.loadinArea;
      _socials = $v.socials?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VenueRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VenueRecord;
  }

  @override
  void update(void Function(VenueRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VenueRecord build() => _build();

  _$VenueRecord _build() {
    _$VenueRecord _$result;
    try {
      _$result = _$v ??
          new _$VenueRecord._(
              name: name,
              description: description,
              phone: phone,
              cover: cover,
              images: _images?.build(),
              address: address.build(),
              owner: owner.build(),
              stagePower: stagePower,
              soundSetupInfo: soundSetupInfo,
              stagePlot: stagePlot,
              loadinArea: loadinArea,
              socials: _socials?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'address';
        address.build();
        _$failedField = 'owner';
        owner.build();

        _$failedField = 'socials';
        _socials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VenueRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
