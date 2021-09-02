import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'songs_record.g.dart';

abstract class SongsRecord implements Built<SongsRecord, SongsRecordBuilder> {
  static Serializer<SongsRecord> get serializer => _$songsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get artist;

  @nullable
  String get time;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SongsRecordBuilder builder) => builder
    ..name = ''
    ..artist = ''
    ..time = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('songs');

  static Stream<SongsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SongsRecord._();
  factory SongsRecord([void Function(SongsRecordBuilder) updates]) =
      _$SongsRecord;

  static SongsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createSongsRecordData({
  String name,
  String artist,
  String time,
}) =>
    serializers.toFirestore(
        SongsRecord.serializer,
        SongsRecord((s) => s
          ..name = name
          ..artist = artist
          ..time = time));
