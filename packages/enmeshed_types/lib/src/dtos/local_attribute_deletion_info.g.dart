// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_attribute_deletion_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalAttributeDeletionInfo _$LocalAttributeDeletionInfoFromJson(Map<String, dynamic> json) => LocalAttributeDeletionInfo(
<<<<<<< HEAD
      deletionStatus: $enumDecode(_$AttributeDeletionStatusEnumMap, json['deletionStatus']),
=======
      deletionStatus: $enumDecode(_$LocalAttributeDeletionStatusEnumMap, json['deletionStatus']),
>>>>>>> main
      deletionDate: json['deletionDate'] as String,
    );

Map<String, dynamic> _$LocalAttributeDeletionInfoToJson(LocalAttributeDeletionInfo instance) => <String, dynamic>{
<<<<<<< HEAD
      'deletionStatus': _$AttributeDeletionStatusEnumMap[instance.deletionStatus]!,
      'deletionDate': instance.deletionDate,
    };

const _$AttributeDeletionStatusEnumMap = {
  AttributeDeletionStatus.DeletionRequestSent: 'DeletionRequestSent',
  AttributeDeletionStatus.DeletionRequestRejected: 'DeletionRequestRejected',
  AttributeDeletionStatus.ToBeDeleted: 'ToBeDeleted',
  AttributeDeletionStatus.ToBeDeletedByPeer: 'ToBeDeletedByPeer',
  AttributeDeletionStatus.DeletedByPeer: 'DeletedByPeer',
  AttributeDeletionStatus.DeletedByOwner: 'DeletedByOwner',
=======
      'deletionStatus': _$LocalAttributeDeletionStatusEnumMap[instance.deletionStatus]!,
      'deletionDate': instance.deletionDate,
    };

const _$LocalAttributeDeletionStatusEnumMap = {
  LocalAttributeDeletionStatus.DeletionRequestSent: 'DeletionRequestSent',
  LocalAttributeDeletionStatus.DeletionRequestRejected: 'DeletionRequestRejected',
  LocalAttributeDeletionStatus.ToBeDeleted: 'ToBeDeleted',
  LocalAttributeDeletionStatus.ToBeDeletedByPeer: 'ToBeDeletedByPeer',
  LocalAttributeDeletionStatus.DeletedByPeer: 'DeletedByPeer',
  LocalAttributeDeletionStatus.DeletedByOwner: 'DeletedByOwner',
>>>>>>> main
};
