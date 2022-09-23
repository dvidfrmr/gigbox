import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_struct.g.dart';

abstract class EventStruct implements Built<EventStruct, EventStructBuilder> {
  static Serializer<EventStruct> get serializer => _$eventStructSerializer;

  String? get name;

  @BuiltValueField(wireName: 'event_ref')
  DocumentReference? get eventRef;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(EventStructBuilder builder) => builder
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  EventStruct._();
  factory EventStruct([void Function(EventStructBuilder) updates]) =
      _$EventStruct;
}

EventStruct createEventStruct({
  String? name,
  DocumentReference? eventRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventStruct(
      (e) => e
        ..name = name
        ..eventRef = eventRef
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

EventStruct? updateEventStruct(
  EventStruct? event, {
  bool clearUnsetFields = true,
}) =>
    event != null
        ? (event.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addEventStructData(
  Map<String, dynamic> firestoreData,
  EventStruct? event,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (event == null) {
    return;
  }
  if (event.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && event.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventData = getEventFirestoreData(event, forFieldValue);
  final nestedData = eventData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = event.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getEventFirestoreData(
  EventStruct? event, [
  bool forFieldValue = false,
]) {
  if (event == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(EventStruct.serializer, event);

  // Add any Firestore field values
  event.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventListFirestoreData(
  List<EventStruct>? events,
) =>
    events?.map((e) => getEventFirestoreData(e, true)).toList() ?? [];
