// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SongsRecord> _$songsRecordSerializer = new _$SongsRecordSerializer();

class _$SongsRecordSerializer implements StructuredSerializer<SongsRecord> {
  @override
  final Iterable<Type> types = const [SongsRecord, _$SongsRecord];
  @override
  final String wireName = 'SongsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SongsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artist;
    if (value != null) {
      result
        ..add('artist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SongsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SongsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artist':
          result.artist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SongsRecord extends SongsRecord {
  @override
  final String name;
  @override
  final String artist;
  @override
  final String time;
  @override
  final DocumentReference<Object> reference;

  factory _$SongsRecord([void Function(SongsRecordBuilder) updates]) =>
      (new SongsRecordBuilder()..update(updates)).build();

  _$SongsRecord._({this.name, this.artist, this.time, this.reference})
      : super._();

  @override
  SongsRecord rebuild(void Function(SongsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SongsRecordBuilder toBuilder() => new SongsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SongsRecord &&
        name == other.name &&
        artist == other.artist &&
        time == other.time &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), artist.hashCode), time.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SongsRecord')
          ..add('name', name)
          ..add('artist', artist)
          ..add('time', time)
          ..add('reference', reference))
        .toString();
  }
}

class SongsRecordBuilder implements Builder<SongsRecord, SongsRecordBuilder> {
  _$SongsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _artist;
  String get artist => _$this._artist;
  set artist(String artist) => _$this._artist = artist;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SongsRecordBuilder() {
    SongsRecord._initializeBuilder(this);
  }

  SongsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _artist = $v.artist;
      _time = $v.time;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SongsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SongsRecord;
  }

  @override
  void update(void Function(SongsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SongsRecord build() {
    final _$result = _$v ??
        new _$SongsRecord._(
            name: name, artist: artist, time: time, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
