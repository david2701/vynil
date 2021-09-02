// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_playlist_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewPlaylistRecord> _$newPlaylistRecordSerializer =
    new _$NewPlaylistRecordSerializer();

class _$NewPlaylistRecordSerializer
    implements StructuredSerializer<NewPlaylistRecord> {
  @override
  final Iterable<Type> types = const [NewPlaylistRecord, _$NewPlaylistRecord];
  @override
  final String wireName = 'NewPlaylistRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, NewPlaylistRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.namePlaylist;
    if (value != null) {
      result
        ..add('name_playlist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desciption;
    if (value != null) {
      result
        ..add('desciption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
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
  NewPlaylistRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewPlaylistRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name_playlist':
          result.namePlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desciption':
          result.desciption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
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

class _$NewPlaylistRecord extends NewPlaylistRecord {
  @override
  final String namePlaylist;
  @override
  final String desciption;
  @override
  final String imagen;
  @override
  final DocumentReference<Object> reference;

  factory _$NewPlaylistRecord(
          [void Function(NewPlaylistRecordBuilder) updates]) =>
      (new NewPlaylistRecordBuilder()..update(updates)).build();

  _$NewPlaylistRecord._(
      {this.namePlaylist, this.desciption, this.imagen, this.reference})
      : super._();

  @override
  NewPlaylistRecord rebuild(void Function(NewPlaylistRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewPlaylistRecordBuilder toBuilder() =>
      new NewPlaylistRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPlaylistRecord &&
        namePlaylist == other.namePlaylist &&
        desciption == other.desciption &&
        imagen == other.imagen &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, namePlaylist.hashCode), desciption.hashCode),
            imagen.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewPlaylistRecord')
          ..add('namePlaylist', namePlaylist)
          ..add('desciption', desciption)
          ..add('imagen', imagen)
          ..add('reference', reference))
        .toString();
  }
}

class NewPlaylistRecordBuilder
    implements Builder<NewPlaylistRecord, NewPlaylistRecordBuilder> {
  _$NewPlaylistRecord _$v;

  String _namePlaylist;
  String get namePlaylist => _$this._namePlaylist;
  set namePlaylist(String namePlaylist) => _$this._namePlaylist = namePlaylist;

  String _desciption;
  String get desciption => _$this._desciption;
  set desciption(String desciption) => _$this._desciption = desciption;

  String _imagen;
  String get imagen => _$this._imagen;
  set imagen(String imagen) => _$this._imagen = imagen;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NewPlaylistRecordBuilder() {
    NewPlaylistRecord._initializeBuilder(this);
  }

  NewPlaylistRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namePlaylist = $v.namePlaylist;
      _desciption = $v.desciption;
      _imagen = $v.imagen;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewPlaylistRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewPlaylistRecord;
  }

  @override
  void update(void Function(NewPlaylistRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewPlaylistRecord build() {
    final _$result = _$v ??
        new _$NewPlaylistRecord._(
            namePlaylist: namePlaylist,
            desciption: desciption,
            imagen: imagen,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
