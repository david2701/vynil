import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'trash_record.g.dart';

abstract class TrashRecord implements Built<TrashRecord, TrashRecordBuilder> {
  static Serializer<TrashRecord> get serializer => _$trashRecordSerializer;

  @nullable
  bool get trash;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TrashRecordBuilder builder) =>
      builder..trash = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trash');

  static Stream<TrashRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TrashRecord._();
  factory TrashRecord([void Function(TrashRecordBuilder) updates]) =
      _$TrashRecord;

  static TrashRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createTrashRecordData({
  bool trash,
}) =>
    serializers.toFirestore(
        TrashRecord.serializer, TrashRecord((t) => t..trash = trash));
