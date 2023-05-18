import 'package:json_annotation/json_annotation.dart';

part 'meta_data.g.dart';

@JsonSerializable(explicitToJson: true)
class MetaData{

  @JsonKey(defaultValue: '', name:'identifier')
  String identifier;

  @JsonKey(defaultValue: '', name:'mediatype')
  String mediatype;

  @JsonKey(defaultValue: '', name:'description')
  String description;

  @JsonKey(defaultValue: '', name:'language')
  String language;

  @JsonKey(defaultValue: '', name:'scanner')
  String scanner;

  @JsonKey(defaultValue: '', name:'title')
  String title;

  @JsonKey(defaultValue: '', name:'publicdate')
  String publicDate;

  @JsonKey(defaultValue: '', name:'addeddate')
  String addedDate;

  @JsonKey(defaultValue: '', name:'identifier-access')
  String identifierAccess;

  @JsonKey(defaultValue: '', name:'identifier-ark')
  String identifierArk;

  @JsonKey(defaultValue: '', name:'ppi')
  String ppi;

  @JsonKey(defaultValue: '', name:'ocr')
  String ocr;

  @JsonKey(defaultValue: '', name:'repub_state')
  String identifierrepubState;

  @JsonKey(defaultValue: '', name:'creator')
  String creator;

  @JsonKey(defaultValue: [], name:'subject')
  List<String> subject;

  @JsonKey(defaultValue: '', name:'curation')
  String curation;

  @JsonKey(defaultValue: [], name:'collection')
  List<String> collection;

  @JsonKey(defaultValue: '', name:'backup_location')
  String backupLocation;

  @JsonKey(defaultValue: '', name:'openlibrary_edition')
  String openLibraryEdition;

  @JsonKey(defaultValue: '', name:'openlibrary_work')
  String openLibraryWork;

  MetaData({
    required this.description,
    required this.title,
    required this.addedDate,
    required this.backupLocation,
    required this.collection,
    required this.creator,
    required this.curation,
    required this.identifier,
    required this.identifierAccess,
    required this.identifierArk,
    required this.identifierrepubState,
    required this.language,
    required this.mediatype,
    required this.ocr,
    required this.openLibraryEdition,
    required this.openLibraryWork,
    required this.ppi,
    required this.publicDate,
    required this.scanner,
    required this.subject,
});

}