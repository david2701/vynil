import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favorite_record.g.dart';

abstract class FavoriteRecord
    implements Built<FavoriteRecord, FavoriteRecordBuilder> {
  static Serializer<FavoriteRecord> get serializer =>
      _$favoriteRecordSerializer;

  @nullable
  bool get favorite;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FavoriteRecordBuilder builder) =>
      builder..favorite = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorite');

  static Stream<FavoriteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FavoriteRecord._();
  factory FavoriteRecord([void Function(FavoriteRecordBuilder) updates]) =
      _$FavoriteRecord;

  static FavoriteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createFavoriteRecordData({
  bool favorite,
}) =>
    serializers.toFirestore(FavoriteRecord.serializer,
        FavoriteRecord((f) => f..favorite = favorite));
