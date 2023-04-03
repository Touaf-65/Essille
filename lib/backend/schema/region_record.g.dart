// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegionRecord> _$regionRecordSerializer =
    new _$RegionRecordSerializer();

class _$RegionRecordSerializer implements StructuredSerializer<RegionRecord> {
  @override
  final Iterable<Type> types = const [RegionRecord, _$RegionRecord];
  @override
  final String wireName = 'RegionRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.regionName;
    if (value != null) {
      result
        ..add('region_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regionPopulation;
    if (value != null) {
      result
        ..add('region_population')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.regionArea;
    if (value != null) {
      result
        ..add('region_area')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  RegionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'region_name':
          result.regionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'region_population':
          result.regionPopulation = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'region_area':
          result.regionArea = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$RegionRecord extends RegionRecord {
  @override
  final String? regionName;
  @override
  final String? country;
  @override
  final int? regionPopulation;
  @override
  final int? regionArea;
  @override
  final int? nbWaterPoints;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RegionRecord([void Function(RegionRecordBuilder)? updates]) =>
      (new RegionRecordBuilder()..update(updates))._build();

  _$RegionRecord._(
      {this.regionName,
      this.country,
      this.regionPopulation,
      this.regionArea,
      this.nbWaterPoints,
      this.ffRef})
      : super._();

  @override
  RegionRecord rebuild(void Function(RegionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionRecordBuilder toBuilder() => new RegionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionRecord &&
        regionName == other.regionName &&
        country == other.country &&
        regionPopulation == other.regionPopulation &&
        regionArea == other.regionArea &&
        nbWaterPoints == other.nbWaterPoints &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, regionName.hashCode), country.hashCode),
                    regionPopulation.hashCode),
                regionArea.hashCode),
            nbWaterPoints.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionRecord')
          ..add('regionName', regionName)
          ..add('country', country)
          ..add('regionPopulation', regionPopulation)
          ..add('regionArea', regionArea)
          ..add('nbWaterPoints', nbWaterPoints)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RegionRecordBuilder
    implements Builder<RegionRecord, RegionRecordBuilder> {
  _$RegionRecord? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _regionPopulation;
  int? get regionPopulation => _$this._regionPopulation;
  set regionPopulation(int? regionPopulation) =>
      _$this._regionPopulation = regionPopulation;

  int? _regionArea;
  int? get regionArea => _$this._regionArea;
  set regionArea(int? regionArea) => _$this._regionArea = regionArea;

  int? _nbWaterPoints;
  int? get nbWaterPoints => _$this._nbWaterPoints;
  set nbWaterPoints(int? nbWaterPoints) =>
      _$this._nbWaterPoints = nbWaterPoints;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RegionRecordBuilder() {
    RegionRecord._initializeBuilder(this);
  }

  RegionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _country = $v.country;
      _regionPopulation = $v.regionPopulation;
      _regionArea = $v.regionArea;
      _nbWaterPoints = $v.nbWaterPoints;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionRecord;
  }

  @override
  void update(void Function(RegionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionRecord build() => _build();

  _$RegionRecord _build() {
    final _$result = _$v ??
        new _$RegionRecord._(
            regionName: regionName,
            country: country,
            regionPopulation: regionPopulation,
            regionArea: regionArea,
            nbWaterPoints: nbWaterPoints,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
