// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelationshipDTO _$RelationshipDTOFromJson(Map<String, dynamic> json) => RelationshipDTO(
      id: json['id'] as String,
      template: RelationshipTemplateDTO.fromJson(json['template'] as Map<String, dynamic>),
      status: $enumDecode(_$RelationshipStatusEnumMap, json['status']),
      peer: json['peer'] as String,
      peerIdentity: IdentityDTO.fromJson(json['peerIdentity'] as Map<String, dynamic>),
      peerDeletionInfo: json['peerDeletionInfo'] == null ? null : PeerDeletionInfo.fromJson(json['peerDeletionInfo'] as Map<String, dynamic>),
      creationContent: RelationshipCreationContentDerivation.fromJson(json['creationContent'] as Map<String, dynamic>),
      auditLog: (json['auditLog'] as List<dynamic>).map((e) => RelationshipAuditLogEntryDTO.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$RelationshipDTOToJson(RelationshipDTO instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'template': instance.template.toJson(),
    'status': _$RelationshipStatusEnumMap[instance.status]!,
    'peer': instance.peer,
    'peerIdentity': instance.peerIdentity.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('peerDeletionInfo', instance.peerDeletionInfo?.toJson());
  val['creationContent'] = instance.creationContent.toJson();
  val['auditLog'] = instance.auditLog.map((e) => e.toJson()).toList();
  return val;
}

const _$RelationshipStatusEnumMap = {
  RelationshipStatus.Pending: 'Pending',
  RelationshipStatus.Active: 'Active',
  RelationshipStatus.Rejected: 'Rejected',
  RelationshipStatus.Revoked: 'Revoked',
  RelationshipStatus.Terminated: 'Terminated',
  RelationshipStatus.DeletionProposed: 'DeletionProposed',
};