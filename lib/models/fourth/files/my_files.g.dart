// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyFiles _$MyFilesFromJson(Map<String, dynamic> json) => MyFiles(
      name: json['name'] as String? ?? '',
      format: json['format'] as String? ?? '',
      size: json['size'] as int? ?? 0,
      sha1: json['sha1'] as String? ?? '',
      source: json['source'] as String? ?? '',
      summation: json['summation'] as String? ?? '',
      btih: json['btih'] as String? ?? '',
      crc32: json['crc32'] as String? ?? '',
      md5: json['md5'] as String? ?? '',
      rotation: json['rotation'] as String? ?? '',
      original: json['original'] as String? ?? '',
      mtime: json['mtime'] as int? ?? 0,
    );

Map<String, dynamic> _$MyFilesToJson(MyFiles instance) => <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'format': instance.format,
      'original': instance.original,
      'mtime': instance.mtime,
      'size': instance.size,
      'md5': instance.md5,
      'crc32': instance.crc32,
      'sha1': instance.sha1,
      'btih': instance.btih,
      'summation': instance.summation,
      'rotation': instance.rotation,
    };
