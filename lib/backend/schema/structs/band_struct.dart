import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'band_struct.g.dart';

abstract class BandStruct implements Built<BandStruct, BandStructBuilder> {
  static Serializer<BandStruct> get serializer => _$bandStructSerializer;

  String? get name;

  @BuiltValueField(wireName: 'band_ref')
  DocumentReference? get bandRef;

  String? get image;

  String? get type;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(BandStructBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..type = ''
    ..firestoreUtilData = FirestoreUtilData();

  BandStruct._();
  factory BandStruct([void Function(BandStructBuilder) updates]) = _$BandStruct;
}

BandStruct createBandStruct({
  String? name,
  DocumentReference? bandRef,
  String? image,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BandStruct(
      (b) => b
        ..name = name
        ..bandRef = bandRef
        ..image = image
        ..type = type
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

BandStruct? updateBandStruct(
  BandStruct? band, {
  bool clearUnsetFields = true,
}) =>
    band != null
        ? (band.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addBandStructData(
  Map<String, dynamic> firestoreData,
  BandStruct? band,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (band == null) {
    return;
  }
  if (band.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && band.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final bandData = getBandFirestoreData(band, forFieldValue);
  final nestedData = bandData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = band.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getBandFirestoreData(
  BandStruct? band, [
  bool forFieldValue = false,
]) {
  if (band == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(BandStruct.serializer, band);

  // Add any Firestore field values
  band.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBandListFirestoreData(
  List<BandStruct>? bands,
) =>
    bands?.map((b) => getBandFirestoreData(b, true)).toList() ?? [];
