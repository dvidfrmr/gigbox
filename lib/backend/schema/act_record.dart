import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'act_record.g.dart';

abstract class ActRecord implements Built<ActRecord, ActRecordBuilder> {
  static Serializer<ActRecord> get serializer => _$actRecordSerializer;

  String? get name;

  DateTime? get startTime;

  String? get duration;

  String? get description;

  double? get compensation;

  String? get loadInTime;

  EventStruct get event;

  String? get status;

  BuiltList<ActInviteStruct>? get invites;

  BuiltList<ActRequestStruct>? get requests;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ActRecordBuilder builder) => builder
    ..name = ''
    ..duration = ''
    ..description = ''
    ..compensation = 0.0
    ..loadInTime = ''
    ..event = EventStructBuilder()
    ..status = ''
    ..invites = ListBuilder()
    ..requests = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('act')
          : FirebaseFirestore.instance.collectionGroup('act');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('act').doc();

  static Stream<ActRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActRecord._();
  factory ActRecord([void Function(ActRecordBuilder) updates]) = _$ActRecord;

  static ActRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActRecordData({
  String? name,
  DateTime? startTime,
  String? duration,
  String? description,
  double? compensation,
  String? loadInTime,
  EventStruct? event,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    ActRecord.serializer,
    ActRecord(
      (a) => a
        ..name = name
        ..startTime = startTime
        ..duration = duration
        ..description = description
        ..compensation = compensation
        ..loadInTime = loadInTime
        ..event = EventStructBuilder()
        ..status = status
        ..invites = null
        ..requests = null,
    ),
  );

  // Handle nested data for "event" field.
  addEventStructData(firestoreData, event, 'event');

  return firestoreData;
}
