import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'act_request_struct.g.dart';

abstract class ActRequestStruct
    implements Built<ActRequestStruct, ActRequestStructBuilder> {
  static Serializer<ActRequestStruct> get serializer =>
      _$actRequestStructSerializer;

  DateTime? get dateTime;

  DocumentReference? get act;

  DocumentReference? get band;

  String? get status;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ActRequestStructBuilder builder) => builder
    ..status = ''
    ..firestoreUtilData = FirestoreUtilData();

  ActRequestStruct._();
  factory ActRequestStruct([void Function(ActRequestStructBuilder) updates]) =
      _$ActRequestStruct;
}

ActRequestStruct createActRequestStruct({
  DateTime? dateTime,
  DocumentReference? act,
  DocumentReference? band,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ActRequestStruct(
      (a) => a
        ..dateTime = dateTime
        ..act = act
        ..band = band
        ..status = status
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ActRequestStruct? updateActRequestStruct(
  ActRequestStruct? actRequest, {
  bool clearUnsetFields = true,
}) =>
    actRequest != null
        ? (actRequest.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addActRequestStructData(
  Map<String, dynamic> firestoreData,
  ActRequestStruct? actRequest,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (actRequest == null) {
    return;
  }
  if (actRequest.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && actRequest.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final actRequestData = getActRequestFirestoreData(actRequest, forFieldValue);
  final nestedData = actRequestData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = actRequest.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getActRequestFirestoreData(
  ActRequestStruct? actRequest, [
  bool forFieldValue = false,
]) {
  if (actRequest == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ActRequestStruct.serializer, actRequest);

  // Add any Firestore field values
  actRequest.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getActRequestListFirestoreData(
  List<ActRequestStruct>? actRequests,
) =>
    actRequests?.map((a) => getActRequestFirestoreData(a, true)).toList() ?? [];
