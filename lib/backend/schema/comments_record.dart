import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comments_record.g.dart';

abstract class CommentsRecord
    implements Built<CommentsRecord, CommentsRecordBuilder> {
  static Serializer<CommentsRecord> get serializer =>
      _$commentsRecordSerializer;

  @BuiltValueField(wireName: 'comment_id')
  String? get commentId;

  @BuiltValueField(wireName: 'post_id')
  String? get postId;

  @BuiltValueField(wireName: 'time_commented')
  DateTime? get timeCommented;

  @BuiltValueField(wireName: 'comment_description')
  String? get commentDescription;

  @BuiltValueField(wireName: 'commented_user')
  DocumentReference? get commentedUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommentsRecordBuilder builder) => builder
    ..commentId = ''
    ..postId = ''
    ..commentDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommentsRecord._();
  factory CommentsRecord([void Function(CommentsRecordBuilder) updates]) =
      _$CommentsRecord;

  static CommentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentId,
  String? postId,
  DateTime? timeCommented,
  String? commentDescription,
  DocumentReference? commentedUser,
}) {
  final firestoreData = serializers.toFirestore(
    CommentsRecord.serializer,
    CommentsRecord(
      (c) => c
        ..commentId = commentId
        ..postId = postId
        ..timeCommented = timeCommented
        ..commentDescription = commentDescription
        ..commentedUser = commentedUser,
    ),
  );

  return firestoreData;
}
