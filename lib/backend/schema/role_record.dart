import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'role_record.g.dart';

abstract class RoleRecord implements Built<RoleRecord, RoleRecordBuilder> {
  static Serializer<RoleRecord> get serializer => _$roleRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RoleRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('role');

  static Stream<RoleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RoleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RoleRecord._();
  factory RoleRecord([void Function(RoleRecordBuilder) updates]) = _$RoleRecord;

  static RoleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRoleRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    RoleRecord.serializer,
    RoleRecord(
      (r) => r..name = name,
    ),
  );

  return firestoreData;
}
