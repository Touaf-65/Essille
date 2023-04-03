import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'country_record.g.dart';

abstract class CountryRecord
    implements Built<CountryRecord, CountryRecordBuilder> {
  static Serializer<CountryRecord> get serializer => _$countryRecordSerializer;

  @BuiltValueField(wireName: 'country_name')
  String? get countryName;

  @BuiltValueField(wireName: 'nb_regions')
  int? get nbRegions;

  @BuiltValueField(wireName: 'country_area')
  double? get countryArea;

  @BuiltValueField(wireName: 'country_population')
  int? get countryPopulation;

  String? get flag;

  @BuiltValueField(wireName: 'country_position')
  LatLng? get countryPosition;

  @BuiltValueField(wireName: 'nbWater_points')
  int? get nbWaterPoints;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CountryRecordBuilder builder) => builder
    ..countryName = ''
    ..nbRegions = 0
    ..countryArea = 0.0
    ..countryPopulation = 0
    ..flag = ''
    ..nbWaterPoints = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('country');

  static Stream<CountryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CountryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CountryRecord._();
  factory CountryRecord([void Function(CountryRecordBuilder) updates]) =
      _$CountryRecord;

  static CountryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCountryRecordData({
  String? countryName,
  int? nbRegions,
  double? countryArea,
  int? countryPopulation,
  String? flag,
  LatLng? countryPosition,
  int? nbWaterPoints,
}) {
  final firestoreData = serializers.toFirestore(
    CountryRecord.serializer,
    CountryRecord(
      (c) => c
        ..countryName = countryName
        ..nbRegions = nbRegions
        ..countryArea = countryArea
        ..countryPopulation = countryPopulation
        ..flag = flag
        ..countryPosition = countryPosition
        ..nbWaterPoints = nbWaterPoints,
    ),
  );

  return firestoreData;
}
