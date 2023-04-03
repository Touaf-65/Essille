import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'region_record.g.dart';

abstract class RegionRecord
    implements Built<RegionRecord, RegionRecordBuilder> {
  static Serializer<RegionRecord> get serializer => _$regionRecordSerializer;

  @BuiltValueField(wireName: 'region_name')
  String? get regionName;

  String? get country;

  @BuiltValueField(wireName: 'region_population')
  int? get regionPopulation;

  @BuiltValueField(wireName: 'region_area')
  int? get regionArea;

  @BuiltValueField(wireName: 'nbWater_points')
  int? get nbWaterPoints;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RegionRecordBuilder builder) => builder
    ..regionName = ''
    ..country = ''
    ..regionPopulation = 0
    ..regionArea = 0
    ..nbWaterPoints = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('region');

  static Stream<RegionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RegionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RegionRecord._();
  factory RegionRecord([void Function(RegionRecordBuilder) updates]) =
      _$RegionRecord;

  static RegionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRegionRecordData({
  String? regionName,
  String? country,
  int? regionPopulation,
  int? regionArea,
  int? nbWaterPoints,
}) {
  final firestoreData = serializers.toFirestore(
    RegionRecord.serializer,
    RegionRecord(
      (r) => r
        ..regionName = regionName
        ..country = country
        ..regionPopulation = regionPopulation
        ..regionArea = regionArea
        ..nbWaterPoints = nbWaterPoints,
    ),
  );

  return firestoreData;
}
