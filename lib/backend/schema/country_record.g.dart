// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryRecord> _$countryRecordSerializer =
    new _$CountryRecordSerializer();

class _$CountryRecordSerializer implements StructuredSerializer<CountryRecord> {
  @override
  final Iterable<Type> types = const [CountryRecord, _$CountryRecord];
  @override
  final String wireName = 'CountryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.countryName;
    if (value != null) {
      result
        ..add('country_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nbRegions;
    if (value != null) {
      result
        ..add('nb_regions')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.countryArea;
    if (value != null) {
      result
        ..add('country_area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.countryPopulation;
    if (value != null) {
      result
        ..add('country_population')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.flag;
    if (value != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryPosition;
    if (value != null) {
      result
        ..add('country_position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.nbWaterPoints;
    if (value != null) {
      result
        ..add('nbWater_points')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CountryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country_name':
          result.countryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nb_regions':
          result.nbRegions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'country_area':
          result.countryArea = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'country_population':
          result.countryPopulation = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country_position':
          result.countryPosition = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'nbWater_points':
          result.nbWaterPoints = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryRecord extends CountryRecord {
  @override
  final String? countryName;
  @override
  final int? nbRegions;
  @override
  final double? countryArea;
  @override
  final int? countryPopulation;
  @override
  final String? flag;
  @override
  final LatLng? countryPosition;
  @override
  final int? nbWaterPoints;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CountryRecord([void Function(CountryRecordBuilder)? updates]) =>
      (new CountryRecordBuilder()..update(updates))._build();

  _$CountryRecord._(
      {this.countryName,
      this.nbRegions,
      this.countryArea,
      this.countryPopulation,
      this.flag,
      this.countryPosition,
      this.nbWaterPoints,
      this.ffRef})
      : super._();

  @override
  CountryRecord rebuild(void Function(CountryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryRecordBuilder toBuilder() => new CountryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryRecord &&
        countryName == other.countryName &&
        nbRegions == other.nbRegions &&
        countryArea == other.countryArea &&
        countryPopulation == other.countryPopulation &&
        flag == other.flag &&
        countryPosition == other.countryPosition &&
        nbWaterPoints == other.nbWaterPoints &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, countryName.hashCode),
                                nbRegions.hashCode),
                            countryArea.hashCode),
                        countryPopulation.hashCode),
                    flag.hashCode),
                countryPosition.hashCode),
            nbWaterPoints.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountryRecord')
          ..add('countryName', countryName)
          ..add('nbRegions', nbRegions)
          ..add('countryArea', countryArea)
          ..add('countryPopulation', countryPopulation)
          ..add('flag', flag)
          ..add('countryPosition', countryPosition)
          ..add('nbWaterPoints', nbWaterPoints)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CountryRecordBuilder
    implements Builder<CountryRecord, CountryRecordBuilder> {
  _$CountryRecord? _$v;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  int? _nbRegions;
  int? get nbRegions => _$this._nbRegions;
  set nbRegions(int? nbRegions) => _$this._nbRegions = nbRegions;

  double? _countryArea;
  double? get countryArea => _$this._countryArea;
  set countryArea(double? countryArea) => _$this._countryArea = countryArea;

  int? _countryPopulation;
  int? get countryPopulation => _$this._countryPopulation;
  set countryPopulation(int? countryPopulation) =>
      _$this._countryPopulation = countryPopulation;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  LatLng? _countryPosition;
  LatLng? get countryPosition => _$this._countryPosition;
  set countryPosition(LatLng? countryPosition) =>
      _$this._countryPosition = countryPosition;

  int? _nbWaterPoints;
  int? get nbWaterPoints => _$this._nbWaterPoints;
  set nbWaterPoints(int? nbWaterPoints) =>
      _$this._nbWaterPoints = nbWaterPoints;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CountryRecordBuilder() {
    CountryRecord._initializeBuilder(this);
  }

  CountryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryName = $v.countryName;
      _nbRegions = $v.nbRegions;
      _countryArea = $v.countryArea;
      _countryPopulation = $v.countryPopulation;
      _flag = $v.flag;
      _countryPosition = $v.countryPosition;
      _nbWaterPoints = $v.nbWaterPoints;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryRecord;
  }

  @override
  void update(void Function(CountryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountryRecord build() => _build();

  _$CountryRecord _build() {
    final _$result = _$v ??
        new _$CountryRecord._(
            countryName: countryName,
            nbRegions: nbRegions,
            countryArea: countryArea,
            countryPopulation: countryPopulation,
            flag: flag,
            countryPosition: countryPosition,
            nbWaterPoints: nbWaterPoints,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
