import 'package:json_annotation/json_annotation.dart';

part 'my_files.g.dart';

@JsonSerializable(explicitToJson: true)
class MyFiles {

  @JsonKey(defaultValue: '', name: 'name')
  String name;

  @JsonKey(defaultValue: '', name: 'source')
  String source;

  @JsonKey(defaultValue: '', name: 'format')
  String format;

  @JsonKey(defaultValue: '', name: 'original')
  String original;

  @JsonKey(defaultValue: 0, name: 'mtime')
  int mtime;

  @JsonKey(defaultValue: 0, name: 'size')
  int size;

  @JsonKey(defaultValue: '', name: 'md5')
  String md5;

  @JsonKey(defaultValue: '', name: 'crc32')
  String crc32;

  @JsonKey(defaultValue: '', name: 'sha1')
  String sha1;

  @JsonKey(defaultValue: '', name: 'btih')
  String btih;

  @JsonKey(defaultValue: '', name: 'summation')
  String summation;

  @JsonKey(defaultValue: '', name: 'rotation')
  String rotation;

  MyFiles({
    required this.name,
    required this.format,
    required this.size,
    required this.sha1,
    required this.source,
    required this.summation,
    required this.btih,
    required this.crc32,
    required this.md5,
    required this.rotation,
    required this.original,
    required this.mtime,
  });
  factory MyFiles.fromJson(Map<String, dynamic> json) => _$MyFilesFromJson(json);
  Map<String, dynamic> toJson() => _$MyFilesToJson(this);

}
