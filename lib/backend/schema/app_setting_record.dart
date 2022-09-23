import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'app_setting_record.g.dart';

abstract class AppSettingRecord
    implements Built<AppSettingRecord, AppSettingRecordBuilder> {
  static Serializer<AppSettingRecord> get serializer =>
      _$appSettingRecordSerializer;

  BrandStruct get brand;

  DefaultImagesStruct get defaultImages;

  bool? get anonUserOn;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppSettingRecordBuilder builder) => builder
    ..brand = BrandStructBuilder()
    ..defaultImages = DefaultImagesStructBuilder()
    ..anonUserOn = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appSetting');

  static Stream<AppSettingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppSettingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppSettingRecord._();
  factory AppSettingRecord([void Function(AppSettingRecordBuilder) updates]) =
      _$AppSettingRecord;

  static AppSettingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppSettingRecordData({
  BrandStruct? brand,
  DefaultImagesStruct? defaultImages,
  bool? anonUserOn,
}) {
  final firestoreData = serializers.toFirestore(
    AppSettingRecord.serializer,
    AppSettingRecord(
      (a) => a
        ..brand = BrandStructBuilder()
        ..defaultImages = DefaultImagesStructBuilder()
        ..anonUserOn = anonUserOn,
    ),
  );

  // Handle nested data for "brand" field.
  addBrandStructData(firestoreData, brand, 'brand');

  // Handle nested data for "defaultImages" field.
  addDefaultImagesStructData(firestoreData, defaultImages, 'defaultImages');

  return firestoreData;
}
