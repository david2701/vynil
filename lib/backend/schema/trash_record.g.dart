// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trash_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrashRecord> _$trashRecordSerializer = new _$TrashRecordSerializer();

class _$TrashRecordSerializer implements StructuredSerializer<TrashRecord> {
  @override
  final Iterable<Type> types = const [TrashRecord, _$TrashRecord];
  @override
  final String wireName = 'TrashRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TrashRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.trash;
    if (value != null) {
      result
        ..add('trash')
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
  TrashRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrashRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'trash':
          result.trash = serializers.deserialize(value,
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

class _$TrashRecord extends TrashRecord {
  @override
  final bool trash;
  @override
  final DocumentReference<Object> reference;

  factory _$TrashRecord([void Function(TrashRecordBuilder) updates]) =>
      (new TrashRecordBuilder()..update(updates)).build();

  _$TrashRecord._({this.trash, this.reference}) : super._();

  @override
  TrashRecord rebuild(void Function(TrashRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrashRecordBuilder toBuilder() => new TrashRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrashRecord &&
        trash == other.trash &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, trash.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrashRecord')
          ..add('trash', trash)
          ..add('reference', reference))
        .toString();
  }
}

class TrashRecordBuilder implements Builder<TrashRecord, TrashRecordBuilder> {
  _$TrashRecord _$v;

  bool _trash;
  bool get trash => _$this._trash;
  set trash(bool trash) => _$this._trash = trash;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TrashRecordBuilder() {
    TrashRecord._initializeBuilder(this);
  }

  TrashRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trash = $v.trash;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrashRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrashRecord;
  }

  @override
  void update(void Function(TrashRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrashRecord build() {
    final _$result =
        _$v ?? new _$TrashRecord._(trash: trash, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
