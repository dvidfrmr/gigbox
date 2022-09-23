import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'venue_record.g.dart';

abstract class VenueRecord implements Built<VenueRecord, VenueRecordBuilder> {
  static Serializer<VenueRecord> get serializer => _$venueRecordSerializer;

  String? get name;

  String? get description;

  String? get phone;

  String? get cover;

  BuiltList<String>? get images;

  AddressStruct get address;

  UserStruct get owner;

  @BuiltValueField(wireName: 'stage_power')
  String? get stagePower;

  @BuiltValueField(wireName: 'sound_setup_info')
  String? get soundSetupInfo;

  @BuiltValueField(wireName: 'stage_plot')
  String? get stagePlot;

  @BuiltValueField(wireName: 'loadin_area')
  String? get loadinArea;

  BuiltList<SocialStruct>? get socials;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VenueRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..phone = ''
    ..cover = ''
    ..images = ListBuilder()
    ..address = AddressStructBuilder()
    ..owner = UserStructBuilder()
    ..stagePower = ''
    ..soundSetupInfo = ''
    ..stagePlot = ''
    ..loadinArea = ''
    ..socials = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venue');

  static Stream<VenueRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VenueRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VenueRecord._();
  factory VenueRecord([void Function(VenueRecordBuilder) updates]) =
      _$VenueRecord;

  static VenueRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVenueRecordData({
  String? name,
  String? description,
  String? phone,
  String? cover,
  AddressStruct? address,
  UserStruct? owner,
  String? stagePower,
  String? soundSetupInfo,
  String? stagePlot,
  String? loadinArea,
}) {
  final firestoreData = serializers.toFirestore(
    VenueRecord.serializer,
    VenueRecord(
      (v) => v
        ..name = name
        ..description = description
        ..phone = phone
        ..cover = cover
        ..images = null
        ..address = AddressStructBuilder()
        ..owner = UserStructBuilder()
        ..stagePower = stagePower
        ..soundSetupInfo = soundSetupInfo
        ..stagePlot = stagePlot
        ..loadinArea = loadinArea
        ..socials = null,
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "owner" field.
  addUserStructData(firestoreData, owner, 'owner');

  return firestoreData;
}
