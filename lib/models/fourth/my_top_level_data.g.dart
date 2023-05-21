// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_top_level_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyTopLevelData _$MyTopLevelDataFromJson(Map<String, dynamic> json) =>
    MyTopLevelData(
      created: json['created'] as int? ?? 0,
      d1: json['d1'] as String? ?? '',
      d2: json['d2'] as String? ?? '',
      dir: json['dir'] as String? ?? '',
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => MyFiles.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      filesCount: json['files_count'] as String? ?? '',
      itemLastUpdated: json['item_last_updated'] as int? ?? 0,
      itemSize: json['item_size'] as int? ?? 0,
      metadata: MetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      server: json['server'] as String? ?? '',
      uniq: json['uniq'] as int? ?? 0,
      workableServers: (json['workable_servers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MyTopLevelDataToJson(MyTopLevelData instance) =>
    <String, dynamic>{
      'created': instance.created,
      'd1': instance.d1,
      'd2': instance.d2,
      'dir': instance.dir,
      'files': instance.files,
      'files_count': instance.filesCount,
      'item_last_updated': instance.itemLastUpdated,
      'item_size': instance.itemSize,
      'metadata': instance.metadata,
      'server': instance.server,
      'uniq': instance.uniq,
      'workable_servers': instance.workableServers,
    };
