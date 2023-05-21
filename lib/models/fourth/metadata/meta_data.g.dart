// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      description: json['description'] as String? ?? '',
      title: json['title'] as String? ?? '',
      addedDate: json['addeddate'] as String? ?? '',
      backupLocation: json['backup_location'] as String? ?? '',
      collection: (json['collection'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      creator: json['creator'] as String? ?? '',
      curation: json['curation'] as String? ?? '',
      identifier: json['identifier'] as String? ?? '',
      identifierAccess: json['identifier-access'] as String? ?? '',
      identifierArk: json['identifier-ark'] as String? ?? '',
      identifierrepubState: json['repub_state'] as String? ?? '',
      language: json['language'] as String? ?? '',
      mediatype: json['mediatype'] as String? ?? '',
      ocr: json['ocr'] as String? ?? '',
      openLibraryEdition: json['openlibrary_edition'] as String? ?? '',
      openLibraryWork: json['openlibrary_work'] as String? ?? '',
      ppi: json['ppi'] as String? ?? '',
      publicDate: json['publicdate'] as String? ?? '',
      scanner: json['scanner'] as String? ?? '',
      subject: (json['subject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'identifier': instance.identifier,
      'mediatype': instance.mediatype,
      'description': instance.description,
      'language': instance.language,
      'scanner': instance.scanner,
      'title': instance.title,
      'publicdate': instance.publicDate,
      'addeddate': instance.addedDate,
      'identifier-access': instance.identifierAccess,
      'identifier-ark': instance.identifierArk,
      'ppi': instance.ppi,
      'ocr': instance.ocr,
      'repub_state': instance.identifierrepubState,
      'creator': instance.creator,
      'subject': instance.subject,
      'curation': instance.curation,
      'collection': instance.collection,
      'backup_location': instance.backupLocation,
      'openlibrary_edition': instance.openLibraryEdition,
      'openlibrary_work': instance.openLibraryWork,
    };
