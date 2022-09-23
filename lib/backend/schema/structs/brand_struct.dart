import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'brand_struct.g.dart';

abstract class BrandStruct implements Built<BrandStruct, BrandStructBuilder> {
  static Serializer<BrandStruct> get serializer => _$brandStructSerializer;

  String? get name;

  String? get tagLine;

  String? get description;

  String? get logo;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(BrandStructBuilder builder) => builder
    ..name = ''
    ..tagLine = ''
    ..description = ''
    ..logo = ''
    ..firestoreUtilData = FirestoreUtilData();

  BrandStruct._();
  factory BrandStruct([void Function(BrandStructBuilder) updates]) =
      _$BrandStruct;
}

BrandStruct createBrandStruct({
  String? name,
  String? tagLine,
  String? description,
  String? logo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BrandStruct(
      (b) => b
        ..name = name
        ..tagLine = tagLine
        ..description = description
        ..logo = logo
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

BrandStruct? updateBrandStruct(
  BrandStruct? brand, {
  bool clearUnsetFields = true,
}) =>
    brand != null
        ? (brand.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addBrandStructData(
  Map<String, dynamic> firestoreData,
  BrandStruct? brand,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (brand == null) {
    return;
  }
  if (brand.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && brand.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final brandData = getBrandFirestoreData(brand, forFieldValue);
  final nestedData = brandData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = brand.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getBrandFirestoreData(
  BrandStruct? brand, [
  bool forFieldValue = false,
]) {
  if (brand == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(BrandStruct.serializer, brand);

  // Add any Firestore field values
  brand.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBrandListFirestoreData(
  List<BrandStruct>? brands,
) =>
    brands?.map((b) => getBrandFirestoreData(b, true)).toList() ?? [];
