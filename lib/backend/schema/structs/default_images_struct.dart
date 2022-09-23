import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'default_images_struct.g.dart';

abstract class DefaultImagesStruct
    implements Built<DefaultImagesStruct, DefaultImagesStructBuilder> {
  static Serializer<DefaultImagesStruct> get serializer =>
      _$defaultImagesStructSerializer;

  String? get avatar;

  String? get cover;

  String? get image;

  String? get imageLoading;

  String? get icon;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(DefaultImagesStructBuilder builder) => builder
    ..avatar = ''
    ..cover = ''
    ..image = ''
    ..imageLoading = ''
    ..icon = ''
    ..firestoreUtilData = FirestoreUtilData();

  DefaultImagesStruct._();
  factory DefaultImagesStruct(
          [void Function(DefaultImagesStructBuilder) updates]) =
      _$DefaultImagesStruct;
}

DefaultImagesStruct createDefaultImagesStruct({
  String? avatar,
  String? cover,
  String? image,
  String? imageLoading,
  String? icon,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DefaultImagesStruct(
      (d) => d
        ..avatar = avatar
        ..cover = cover
        ..image = image
        ..imageLoading = imageLoading
        ..icon = icon
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

DefaultImagesStruct? updateDefaultImagesStruct(
  DefaultImagesStruct? defaultImages, {
  bool clearUnsetFields = true,
}) =>
    defaultImages != null
        ? (defaultImages.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addDefaultImagesStructData(
  Map<String, dynamic> firestoreData,
  DefaultImagesStruct? defaultImages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (defaultImages == null) {
    return;
  }
  if (defaultImages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && defaultImages.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final defaultImagesData =
      getDefaultImagesFirestoreData(defaultImages, forFieldValue);
  final nestedData =
      defaultImagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = defaultImages.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getDefaultImagesFirestoreData(
  DefaultImagesStruct? defaultImages, [
  bool forFieldValue = false,
]) {
  if (defaultImages == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(DefaultImagesStruct.serializer, defaultImages);

  // Add any Firestore field values
  defaultImages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDefaultImagesListFirestoreData(
  List<DefaultImagesStruct>? defaultImagess,
) =>
    defaultImagess
        ?.map((d) => getDefaultImagesFirestoreData(d, true))
        .toList() ??
    [];
