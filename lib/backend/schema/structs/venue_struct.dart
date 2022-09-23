import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'venue_struct.g.dart';

abstract class VenueStruct implements Built<VenueStruct, VenueStructBuilder> {
  static Serializer<VenueStruct> get serializer => _$venueStructSerializer;

  @BuiltValueField(wireName: 'venue_ref')
  DocumentReference? get venueRef;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(VenueStructBuilder builder) => builder
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  VenueStruct._();
  factory VenueStruct([void Function(VenueStructBuilder) updates]) =
      _$VenueStruct;
}

VenueStruct createVenueStruct({
  DocumentReference? venueRef,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VenueStruct(
      (v) => v
        ..venueRef = venueRef
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

VenueStruct? updateVenueStruct(
  VenueStruct? venue, {
  bool clearUnsetFields = true,
}) =>
    venue != null
        ? (venue.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addVenueStructData(
  Map<String, dynamic> firestoreData,
  VenueStruct? venue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (venue == null) {
    return;
  }
  if (venue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && venue.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final venueData = getVenueFirestoreData(venue, forFieldValue);
  final nestedData = venueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = venue.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getVenueFirestoreData(
  VenueStruct? venue, [
  bool forFieldValue = false,
]) {
  if (venue == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(VenueStruct.serializer, venue);

  // Add any Firestore field values
  venue.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVenueListFirestoreData(
  List<VenueStruct>? venues,
) =>
    venues?.map((v) => getVenueFirestoreData(v, true)).toList() ?? [];
