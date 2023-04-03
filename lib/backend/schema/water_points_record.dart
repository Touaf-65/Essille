import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'water_points_record.g.dart';

abstract class WaterPointsRecord
    implements Built<WaterPointsRecord, WaterPointsRecordBuilder> {
  static Serializer<WaterPointsRecord> get serializer =>
      _$waterPointsRecordSerializer;

  String? get name;

  String? get id;

  LatLng? get position;

  String? get region;

  String? get country;

  String? get neighborhood;

  BuiltList<String>? get images;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WaterPointsRecordBuilder builder) => builder
    ..name = ''
    ..id = ''
    ..region = ''
    ..country = ''
    ..neighborhood = ''
    ..images = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('water_points');

  static Stream<WaterPointsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WaterPointsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WaterPointsRecord._();
  factory WaterPointsRecord([void Function(WaterPointsRecordBuilder) updates]) =
      _$WaterPointsRecord;

  static WaterPointsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWaterPointsRecordData({
  String? name,
  String? id,
  LatLng? position,
  String? region,
  String? country,
  String? neighborhood,
}) {
  final firestoreData = serializers.toFirestore(
    WaterPointsRecord.serializer,
    WaterPointsRecord(
      (w) => w
        ..name = name
        ..id = id
        ..position = position
        ..region = region
        ..country = country
        ..neighborhood = neighborhood
        ..images = null,
    ),
  );

  return firestoreData;
}
