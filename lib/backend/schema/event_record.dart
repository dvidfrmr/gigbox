import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_record.g.dart';

abstract class EventRecord implements Built<EventRecord, EventRecordBuilder> {
  static Serializer<EventRecord> get serializer => _$eventRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'date_time')
  DateTime? get dateTime;

  @BuiltValueField(wireName: 'ticket_type')
  String? get ticketType;

  double? get price;

  String? get description;

  BuiltList<String>? get images;

  AddressStruct get address;

  @BuiltValueField(wireName: 'stage_plot')
  String? get stagePlot;

  VenueStruct get venue;

  String? get cover;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventRecordBuilder builder) => builder
    ..name = ''
    ..ticketType = ''
    ..price = 0.0
    ..description = ''
    ..images = ListBuilder()
    ..address = AddressStructBuilder()
    ..stagePlot = ''
    ..venue = VenueStructBuilder()
    ..cover = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event');

  static Stream<EventRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventRecord._();
  factory EventRecord([void Function(EventRecordBuilder) updates]) =
      _$EventRecord;

  static EventRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventRecordData({
  String? name,
  DateTime? dateTime,
  String? ticketType,
  double? price,
  String? description,
  AddressStruct? address,
  String? stagePlot,
  VenueStruct? venue,
  String? cover,
}) {
  final firestoreData = serializers.toFirestore(
    EventRecord.serializer,
    EventRecord(
      (e) => e
        ..name = name
        ..dateTime = dateTime
        ..ticketType = ticketType
        ..price = price
        ..description = description
        ..images = null
        ..address = AddressStructBuilder()
        ..stagePlot = stagePlot
        ..venue = VenueStructBuilder()
        ..cover = cover,
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "venue" field.
  addVenueStructData(firestoreData, venue, 'venue');

  return firestoreData;
}
