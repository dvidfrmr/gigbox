import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'band_record.g.dart';

abstract class BandRecord implements Built<BandRecord, BandRecordBuilder> {
  static Serializer<BandRecord> get serializer => _$bandRecordSerializer;

  String? get name;

  String? get image;

  String? get type;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'artist_list_ref')
  BuiltList<DocumentReference>? get artistListRef;

  @BuiltValueField(wireName: 'head_ref')
  DocumentReference? get headRef;

  @BuiltValueField(wireName: 'followers_list_ref')
  BuiltList<DocumentReference>? get followersListRef;

  String? get description;

  @BuiltValueField(wireName: 'event_list_ref')
  BuiltList<DocumentReference>? get eventListRef;

  @BuiltValueField(wireName: 'banner_image')
  String? get bannerImage;

  BuiltList<SocialStruct>? get socials;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BandRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..type = ''
    ..artistListRef = ListBuilder()
    ..followersListRef = ListBuilder()
    ..description = ''
    ..eventListRef = ListBuilder()
    ..bannerImage = ''
    ..socials = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('band');

  static Stream<BandRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BandRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BandRecord._();
  factory BandRecord([void Function(BandRecordBuilder) updates]) = _$BandRecord;

  static BandRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBandRecordData({
  String? name,
  String? image,
  String? type,
  DateTime? createdTime,
  DocumentReference? headRef,
  String? description,
  String? bannerImage,
}) {
  final firestoreData = serializers.toFirestore(
    BandRecord.serializer,
    BandRecord(
      (b) => b
        ..name = name
        ..image = image
        ..type = type
        ..createdTime = createdTime
        ..artistListRef = null
        ..headRef = headRef
        ..followersListRef = null
        ..description = description
        ..eventListRef = null
        ..bannerImage = bannerImage
        ..socials = null,
    ),
  );

  return firestoreData;
}
