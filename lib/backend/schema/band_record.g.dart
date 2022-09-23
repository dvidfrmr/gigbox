// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'band_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BandRecord> _$bandRecordSerializer = new _$BandRecordSerializer();

class _$BandRecordSerializer implements StructuredSerializer<BandRecord> {
  @override
  final Iterable<Type> types = const [BandRecord, _$BandRecord];
  @override
  final String wireName = 'BandRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BandRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.artistListRef;
    if (value != null) {
      result
        ..add('artist_list_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.headRef;
    if (value != null) {
      result
        ..add('head_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.followersListRef;
    if (value != null) {
      result
        ..add('followers_list_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventListRef;
    if (value != null) {
      result
        ..add('event_list_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('banner_image')
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
  BandRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BandRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'artist_list_ref':
          result.artistListRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'head_ref':
          result.headRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'followers_list_ref':
          result.followersListRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_list_ref':
          result.eventListRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'banner_image':
          result.bannerImage = serializers.deserialize(value,
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

class _$BandRecord extends BandRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? type;
  @override
  final DateTime? createdTime;
  @override
  final BuiltList<DocumentReference<Object?>>? artistListRef;
  @override
  final DocumentReference<Object?>? headRef;
  @override
  final BuiltList<DocumentReference<Object?>>? followersListRef;
  @override
  final String? description;
  @override
  final BuiltList<DocumentReference<Object?>>? eventListRef;
  @override
  final String? bannerImage;
  @override
  final BuiltList<SocialStruct>? socials;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BandRecord([void Function(BandRecordBuilder)? updates]) =>
      (new BandRecordBuilder()..update(updates))._build();

  _$BandRecord._(
      {this.name,
      this.image,
      this.type,
      this.createdTime,
      this.artistListRef,
      this.headRef,
      this.followersListRef,
      this.description,
      this.eventListRef,
      this.bannerImage,
      this.socials,
      this.ffRef})
      : super._();

  @override
  BandRecord rebuild(void Function(BandRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BandRecordBuilder toBuilder() => new BandRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BandRecord &&
        name == other.name &&
        image == other.image &&
        type == other.type &&
        createdTime == other.createdTime &&
        artistListRef == other.artistListRef &&
        headRef == other.headRef &&
        followersListRef == other.followersListRef &&
        description == other.description &&
        eventListRef == other.eventListRef &&
        bannerImage == other.bannerImage &&
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
                                            $jc($jc(0, name.hashCode),
                                                image.hashCode),
                                            type.hashCode),
                                        createdTime.hashCode),
                                    artistListRef.hashCode),
                                headRef.hashCode),
                            followersListRef.hashCode),
                        description.hashCode),
                    eventListRef.hashCode),
                bannerImage.hashCode),
            socials.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BandRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('type', type)
          ..add('createdTime', createdTime)
          ..add('artistListRef', artistListRef)
          ..add('headRef', headRef)
          ..add('followersListRef', followersListRef)
          ..add('description', description)
          ..add('eventListRef', eventListRef)
          ..add('bannerImage', bannerImage)
          ..add('socials', socials)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BandRecordBuilder implements Builder<BandRecord, BandRecordBuilder> {
  _$BandRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  ListBuilder<DocumentReference<Object?>>? _artistListRef;
  ListBuilder<DocumentReference<Object?>> get artistListRef =>
      _$this._artistListRef ??= new ListBuilder<DocumentReference<Object?>>();
  set artistListRef(ListBuilder<DocumentReference<Object?>>? artistListRef) =>
      _$this._artistListRef = artistListRef;

  DocumentReference<Object?>? _headRef;
  DocumentReference<Object?>? get headRef => _$this._headRef;
  set headRef(DocumentReference<Object?>? headRef) => _$this._headRef = headRef;

  ListBuilder<DocumentReference<Object?>>? _followersListRef;
  ListBuilder<DocumentReference<Object?>> get followersListRef =>
      _$this._followersListRef ??=
          new ListBuilder<DocumentReference<Object?>>();
  set followersListRef(
          ListBuilder<DocumentReference<Object?>>? followersListRef) =>
      _$this._followersListRef = followersListRef;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<DocumentReference<Object?>>? _eventListRef;
  ListBuilder<DocumentReference<Object?>> get eventListRef =>
      _$this._eventListRef ??= new ListBuilder<DocumentReference<Object?>>();
  set eventListRef(ListBuilder<DocumentReference<Object?>>? eventListRef) =>
      _$this._eventListRef = eventListRef;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  ListBuilder<SocialStruct>? _socials;
  ListBuilder<SocialStruct> get socials =>
      _$this._socials ??= new ListBuilder<SocialStruct>();
  set socials(ListBuilder<SocialStruct>? socials) => _$this._socials = socials;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BandRecordBuilder() {
    BandRecord._initializeBuilder(this);
  }

  BandRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _type = $v.type;
      _createdTime = $v.createdTime;
      _artistListRef = $v.artistListRef?.toBuilder();
      _headRef = $v.headRef;
      _followersListRef = $v.followersListRef?.toBuilder();
      _description = $v.description;
      _eventListRef = $v.eventListRef?.toBuilder();
      _bannerImage = $v.bannerImage;
      _socials = $v.socials?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BandRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BandRecord;
  }

  @override
  void update(void Function(BandRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BandRecord build() => _build();

  _$BandRecord _build() {
    _$BandRecord _$result;
    try {
      _$result = _$v ??
          new _$BandRecord._(
              name: name,
              image: image,
              type: type,
              createdTime: createdTime,
              artistListRef: _artistListRef?.build(),
              headRef: headRef,
              followersListRef: _followersListRef?.build(),
              description: description,
              eventListRef: _eventListRef?.build(),
              bannerImage: bannerImage,
              socials: _socials?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'artistListRef';
        _artistListRef?.build();

        _$failedField = 'followersListRef';
        _followersListRef?.build();

        _$failedField = 'eventListRef';
        _eventListRef?.build();

        _$failedField = 'socials';
        _socials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BandRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
