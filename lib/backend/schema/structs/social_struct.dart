import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'social_struct.g.dart';

abstract class SocialStruct
    implements Built<SocialStruct, SocialStructBuilder> {
  static Serializer<SocialStruct> get serializer => _$socialStructSerializer;

  String? get name;

  String? get url;

  String? get icon;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SocialStructBuilder builder) => builder
    ..name = ''
    ..url = ''
    ..icon = ''
    ..firestoreUtilData = FirestoreUtilData();

  SocialStruct._();
  factory SocialStruct([void Function(SocialStructBuilder) updates]) =
      _$SocialStruct;
}

SocialStruct createSocialStruct({
  String? name,
  String? url,
  String? icon,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SocialStruct(
      (s) => s
        ..name = name
        ..url = url
        ..icon = icon
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SocialStruct? updateSocialStruct(
  SocialStruct? social, {
  bool clearUnsetFields = true,
}) =>
    social != null
        ? (social.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSocialStructData(
  Map<String, dynamic> firestoreData,
  SocialStruct? social,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (social == null) {
    return;
  }
  if (social.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && social.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final socialData = getSocialFirestoreData(social, forFieldValue);
  final nestedData = socialData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = social.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSocialFirestoreData(
  SocialStruct? social, [
  bool forFieldValue = false,
]) {
  if (social == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(SocialStruct.serializer, social);

  // Add any Firestore field values
  social.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSocialListFirestoreData(
  List<SocialStruct>? socials,
) =>
    socials?.map((s) => getSocialFirestoreData(s, true)).toList() ?? [];
