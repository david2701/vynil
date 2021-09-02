import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'new_playlist_record.g.dart';

abstract class NewPlaylistRecord
    implements Built<NewPlaylistRecord, NewPlaylistRecordBuilder> {
  static Serializer<NewPlaylistRecord> get serializer =>
      _$newPlaylistRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'name_playlist')
  String get namePlaylist;

  @nullable
  String get desciption;

  @nullable
  String get imagen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NewPlaylistRecordBuilder builder) => builder
    ..namePlaylist = ''
    ..desciption = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('new_playlist');

  static Stream<NewPlaylistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NewPlaylistRecord._();
  factory NewPlaylistRecord([void Function(NewPlaylistRecordBuilder) updates]) =
      _$NewPlaylistRecord;

  static NewPlaylistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createNewPlaylistRecordData({
  String namePlaylist,
  String desciption,
  String imagen,
}) =>
    serializers.toFirestore(
        NewPlaylistRecord.serializer,
        NewPlaylistRecord((n) => n
          ..namePlaylist = namePlaylist
          ..desciption = desciption
          ..imagen = imagen));
