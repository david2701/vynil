// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteRecord> _$favoriteRecordSerializer =
    new _$FavoriteRecordSerializer();

class _$FavoriteRecordSerializer
    implements StructuredSerializer<FavoriteRecord> {
  @override
  final Iterable<Type> types = const [FavoriteRecord, _$FavoriteRecord];
  @override
  final String wireName = 'FavoriteRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FavoriteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.favorite;
    if (value != null) {
      result
        ..add('favorite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FavoriteRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'favorite':
          result.favorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteRecord extends FavoriteRecord {
  @override
  final bool favorite;
  @override
  final DocumentReference<Object> reference;

  factory _$FavoriteRecord([void Function(FavoriteRecordBuilder) updates]) =>
      (new FavoriteRecordBuilder()..update(updates)).build();

  _$FavoriteRecord._({this.favorite, this.reference}) : super._();

  @override
  FavoriteRecord rebuild(void Function(FavoriteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteRecordBuilder toBuilder() =>
      new FavoriteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteRecord &&
        favorite == other.favorite &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, favorite.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteRecord')
          ..add('favorite', favorite)
          ..add('reference', reference))
        .toString();
  }
}

class FavoriteRecordBuilder
    implements Builder<FavoriteRecord, FavoriteRecordBuilder> {
  _$FavoriteRecord _$v;

  bool _favorite;
  bool get favorite => _$this._favorite;
  set favorite(bool favorite) => _$this._favorite = favorite;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FavoriteRecordBuilder() {
    FavoriteRecord._initializeBuilder(this);
  }

  FavoriteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favorite = $v.favorite;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteRecord;
  }

  @override
  void update(void Function(FavoriteRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteRecord build() {
    final _$result =
        _$v ?? new _$FavoriteRecord._(favorite: favorite, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
