import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  @BuiltValueField(wireName: 'users_assigned')
  BuiltList<DocumentReference>? get usersAssigned;

  @BuiltValueField(wireName: 'project_name')
  String? get projectName;

  String? get description;

  @BuiltValueField(wireName: 'number_tasks')
  int? get numberTasks;

  @BuiltValueField(wireName: 'completed_tasks')
  int? get completedTasks;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: 'projects_id')
  String? get projectsId;

  String? get country;

  String? get owner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..usersAssigned = ListBuilder()
    ..projectName = ''
    ..description = ''
    ..numberTasks = 0
    ..completedTasks = 0
    ..projectsId = ''
    ..country = ''
    ..owner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
  String? projectsId,
  String? country,
  String? owner,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectsRecord.serializer,
    ProjectsRecord(
      (p) => p
        ..usersAssigned = null
        ..projectName = projectName
        ..description = description
        ..numberTasks = numberTasks
        ..completedTasks = completedTasks
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated
        ..projectsId = projectsId
        ..country = country
        ..owner = owner,
    ),
  );

  return firestoreData;
}
