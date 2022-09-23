import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'city_struct.g.dart';

abstract class CityStruct implements Built<CityStruct, CityStructBuilder> {
  static Serializer<CityStruct> get serializer => _$cityStructSerializer;

  @BuiltValueField(wireName: 'city_ref')
  DocumentReference? get cityRef;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CityStructBuilder builder) => builder
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  CityStruct._();
  factory CityStruct([void Function(CityStructBuilder) updates]) = _$CityStruct;
}

CityStruct createCityStruct({
  DocumentReference? cityRef,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CityStruct(
      (c) => c
        ..cityRef = cityRef
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CityStruct? updateCityStruct(
  CityStruct? city, {
  bool clearUnsetFields = true,
}) =>
    city != null
        ? (city.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCityStructData(
  Map<String, dynamic> firestoreData,
  CityStruct? city,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (city == null) {
    return;
  }
  if (city.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && city.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cityData = getCityFirestoreData(city, forFieldValue);
  final nestedData = cityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = city.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCityFirestoreData(
  CityStruct? city, [
  bool forFieldValue = false,
]) {
  if (city == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(CityStruct.serializer, city);

  // Add any Firestore field values
  city.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCityListFirestoreData(
  List<CityStruct>? citys,
) =>
    citys?.map((c) => getCityFirestoreData(c, true)).toList() ?? [];
