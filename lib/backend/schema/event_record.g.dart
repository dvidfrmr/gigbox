// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventRecord> _$eventRecordSerializer = new _$EventRecordSerializer();

class _$EventRecordSerializer implements StructuredSerializer<EventRecord> {
  @override
  final Iterable<Type> types = const [EventRecord, _$EventRecord];
  @override
  final String wireName = 'EventRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressStruct)),
      'venue',
      serializers.serialize(object.venue,
          specifiedType: const FullType(VenueStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ticketType;
    if (value != null) {
      result
        ..add('ticket_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.stagePlot;
    if (value != null) {
      result
        ..add('stage_plot')
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
  EventRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventRecordBuilder();

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
        case 'date_time':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ticket_type':
          result.ticketType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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
        case 'stage_plot':
          result.stagePlot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'venue':
          result.venue.replace(serializers.deserialize(value,
              specifiedType: const FullType(VenueStruct))! as VenueStruct);
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$EventRecord extends EventRecord {
  @override
  final String? name;
  @override
  final DateTime? dateTime;
  @override
  final String? ticketType;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final BuiltList<String>? images;
  @override
  final AddressStruct address;
  @override
  final String? stagePlot;
  @override
  final VenueStruct venue;
  @override
  final String? cover;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventRecord([void Function(EventRecordBuilder)? updates]) =>
      (new EventRecordBuilder()..update(updates))._build();

  _$EventRecord._(
      {this.name,
      this.dateTime,
      this.ticketType,
      this.price,
      this.description,
      this.images,
      required this.address,
      this.stagePlot,
      required this.venue,
      this.cover,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'EventRecord', 'address');
    BuiltValueNullFieldError.checkNotNull(venue, r'EventRecord', 'venue');
  }

  @override
  EventRecord rebuild(void Function(EventRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRecordBuilder toBuilder() => new EventRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventRecord &&
        name == other.name &&
        dateTime == other.dateTime &&
        ticketType == other.ticketType &&
        price == other.price &&
        description == other.description &&
        images == other.images &&
        address == other.address &&
        stagePlot == other.stagePlot &&
        venue == other.venue &&
        cover == other.cover &&
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
                                        $jc($jc(0, name.hashCode),
                                            dateTime.hashCode),
                                        ticketType.hashCode),
                                    price.hashCode),
                                description.hashCode),
                            images.hashCode),
                        address.hashCode),
                    stagePlot.hashCode),
                venue.hashCode),
            cover.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventRecord')
          ..add('name', name)
          ..add('dateTime', dateTime)
          ..add('ticketType', ticketType)
          ..add('price', price)
          ..add('description', description)
          ..add('images', images)
          ..add('address', address)
          ..add('stagePlot', stagePlot)
          ..add('venue', venue)
          ..add('cover', cover)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventRecordBuilder implements Builder<EventRecord, EventRecordBuilder> {
  _$EventRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  String? _ticketType;
  String? get ticketType => _$this._ticketType;
  set ticketType(String? ticketType) => _$this._ticketType = ticketType;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  AddressStructBuilder? _address;
  AddressStructBuilder get address =>
      _$this._address ??= new AddressStructBuilder();
  set address(AddressStructBuilder? address) => _$this._address = address;

  String? _stagePlot;
  String? get stagePlot => _$this._stagePlot;
  set stagePlot(String? stagePlot) => _$this._stagePlot = stagePlot;

  VenueStructBuilder? _venue;
  VenueStructBuilder get venue => _$this._venue ??= new VenueStructBuilder();
  set venue(VenueStructBuilder? venue) => _$this._venue = venue;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventRecordBuilder() {
    EventRecord._initializeBuilder(this);
  }

  EventRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dateTime = $v.dateTime;
      _ticketType = $v.ticketType;
      _price = $v.price;
      _description = $v.description;
      _images = $v.images?.toBuilder();
      _address = $v.address.toBuilder();
      _stagePlot = $v.stagePlot;
      _venue = $v.venue.toBuilder();
      _cover = $v.cover;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventRecord;
  }

  @override
  void update(void Function(EventRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventRecord build() => _build();

  _$EventRecord _build() {
    _$EventRecord _$result;
    try {
      _$result = _$v ??
          new _$EventRecord._(
              name: name,
              dateTime: dateTime,
              ticketType: ticketType,
              price: price,
              description: description,
              images: _images?.build(),
              address: address.build(),
              stagePlot: stagePlot,
              venue: venue.build(),
              cover: cover,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'address';
        address.build();

        _$failedField = 'venue';
        venue.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
