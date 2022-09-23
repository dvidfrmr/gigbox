import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'social_links_record.g.dart';

abstract class SocialLinksRecord
    implements Built<SocialLinksRecord, SocialLinksRecordBuilder> {
  static Serializer<SocialLinksRecord> get serializer =>
      _$socialLinksRecordSerializer;

  String? get name;

  String? get icon;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SocialLinksRecordBuilder builder) => builder
    ..name = ''
    ..icon = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('socialLinks');

  static Stream<SocialLinksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SocialLinksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SocialLinksRecord._();
  factory SocialLinksRecord([void Function(SocialLinksRecordBuilder) updates]) =
      _$SocialLinksRecord;

  static SocialLinksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSocialLinksRecordData({
  String? name,
  String? icon,
}) {
  final firestoreData = serializers.toFirestore(
    SocialLinksRecord.serializer,
    SocialLinksRecord(
      (s) => s
        ..name = name
        ..icon = icon,
    ),
  );

  return firestoreData;
}
