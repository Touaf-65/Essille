// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_points_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WaterPointsRecord> _$waterPointsRecordSerializer =
    new _$WaterPointsRecordSerializer();

class _$WaterPointsRecordSerializer
    implements StructuredSerializer<WaterPointsRecord> {
  @override
  final Iterable<Type> types = const [WaterPointsRecord, _$WaterPointsRecord];
  @override
  final String wireName = 'WaterPointsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WaterPointsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
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
    value = object.neighborhood;
    if (value != null) {
      result
        ..add('neighborhood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  WaterPointsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaterPointsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'neighborhood':
          result.neighborhood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$WaterPointsRecord extends WaterPointsRecord {
  @override
  final String? name;
  @override
  final String? id;
  @override
  final LatLng? position;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final String? neighborhood;
  @override
  final BuiltList<String>? images;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WaterPointsRecord(
          [void Function(WaterPointsRecordBuilder)? updates]) =>
      (new WaterPointsRecordBuilder()..update(updates))._build();

  _$WaterPointsRecord._(
      {this.name,
      this.id,
      this.position,
      this.region,
      this.country,
      this.neighborhood,
      this.images,
      this.ffRef})
      : super._();

  @override
  WaterPointsRecord rebuild(void Function(WaterPointsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaterPointsRecordBuilder toBuilder() =>
      new WaterPointsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WaterPointsRecord &&
        name == other.name &&
        id == other.id &&
        position == other.position &&
        region == other.region &&
        country == other.country &&
        neighborhood == other.neighborhood &&
        images == other.images &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), id.hashCode),
                            position.hashCode),
                        region.hashCode),
                    country.hashCode),
                neighborhood.hashCode),
            images.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WaterPointsRecord')
          ..add('name', name)
          ..add('id', id)
          ..add('position', position)
          ..add('region', region)
          ..add('country', country)
          ..add('neighborhood', neighborhood)
          ..add('images', images)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WaterPointsRecordBuilder
    implements Builder<WaterPointsRecord, WaterPointsRecordBuilder> {
  _$WaterPointsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  LatLng? _position;
  LatLng? get position => _$this._position;
  set position(LatLng? position) => _$this._position = position;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _neighborhood;
  String? get neighborhood => _$this._neighborhood;
  set neighborhood(String? neighborhood) => _$this._neighborhood = neighborhood;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WaterPointsRecordBuilder() {
    WaterPointsRecord._initializeBuilder(this);
  }

  WaterPointsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _position = $v.position;
      _region = $v.region;
      _country = $v.country;
      _neighborhood = $v.neighborhood;
      _images = $v.images?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WaterPointsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WaterPointsRecord;
  }

  @override
  void update(void Function(WaterPointsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WaterPointsRecord build() => _build();

  _$WaterPointsRecord _build() {
    _$WaterPointsRecord _$result;
    try {
      _$result = _$v ??
          new _$WaterPointsRecord._(
              name: name,
              id: id,
              position: position,
              region: region,
              country: country,
              neighborhood: neighborhood,
              images: _images?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WaterPointsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
