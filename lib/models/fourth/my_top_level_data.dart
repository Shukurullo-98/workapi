import 'package:json_annotation/json_annotation.dart';
import 'package:work_api/models/fourth/files/my_files.dart';
import 'package:work_api/models/fourth/metadata/meta_data.dart';

part 'my_top_level_data.g.dart';

@JsonSerializable()
class MyTopLevelData {
  MyTopLevelData({
    required this.created,
    required this.d1,
    required this.d2,
    required this.dir,
    required this.files,
    required this.filesCount,
    required this.itemLastUpdated,
    required this.itemSize,
    required this.metadata,
    required this.server,
    required this.uniq,
    required this.workableServers,
  });

  @JsonKey(defaultValue: 0, name: 'created')
  int created;

  @JsonKey(defaultValue: '', name: 'd1')
  String d1;

  @JsonKey(defaultValue: '', name: 'd2')
  String d2;

  @JsonKey(defaultValue: '', name: 'dir')
  String dir;

  @JsonKey(defaultValue: [], name: 'files')
  List<MyFiles> files;

  @JsonKey(defaultValue: '', name: 'files_count')
  String filesCount;

  @JsonKey(defaultValue: 0, name: 'item_last_updated')
  int itemLastUpdated;

  @JsonKey(defaultValue: 0, name: 'item_size')
  int itemSize;

  @JsonKey(name: 'metadata')
  MetaData metadata;

  @JsonKey(defaultValue: '', name: 'server')
  String server;

  @JsonKey(defaultValue: 0, name: 'uniq')
  int uniq;

  @JsonKey(defaultValue: [], name: 'workable_servers')
  List<String> workableServers;

  factory MyTopLevelData.fromJson(Map<String, dynamic> json) => _$MyTopLevelDataFromJson(json);
  Map<String, dynamic> toJson() => _$MyTopLevelDataToJson(this);

}
