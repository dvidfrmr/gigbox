import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'act_invite_struct.g.dart';

abstract class ActInviteStruct
    implements Built<ActInviteStruct, ActInviteStructBuilder> {
  static Serializer<ActInviteStruct> get serializer =>
      _$actInviteStructSerializer;

  DateTime? get dateTime;

  DocumentReference? get act;

  DocumentReference? get band;

  String? get status;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ActInviteStructBuilder builder) => builder
    ..status = ''
    ..firestoreUtilData = FirestoreUtilData();

  ActInviteStruct._();
  factory ActInviteStruct([void Function(ActInviteStructBuilder) updates]) =
      _$ActInviteStruct;
}

ActInviteStruct createActInviteStruct({
  DateTime? dateTime,
  DocumentReference? act,
  DocumentReference? band,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ActInviteStruct(
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

ActInviteStruct? updateActInviteStruct(
  ActInviteStruct? actInvite, {
  bool clearUnsetFields = true,
}) =>
    actInvite != null
        ? (actInvite.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addActInviteStructData(
  Map<String, dynamic> firestoreData,
  ActInviteStruct? actInvite,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (actInvite == null) {
    return;
  }
  if (actInvite.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && actInvite.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final actInviteData = getActInviteFirestoreData(actInvite, forFieldValue);
  final nestedData = actInviteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = actInvite.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getActInviteFirestoreData(
  ActInviteStruct? actInvite, [
  bool forFieldValue = false,
]) {
  if (actInvite == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ActInviteStruct.serializer, actInvite);

  // Add any Firestore field values
  actInvite.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getActInviteListFirestoreData(
  List<ActInviteStruct>? actInvites,
) =>
    actInvites?.map((a) => getActInviteFirestoreData(a, true)).toList() ?? [];
