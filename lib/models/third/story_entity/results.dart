import 'package:work_api/models/third/story_entity/multimedia.dart';

class Result {
  Result({
    required this.section,
    required this.subsection,
    required this.title,
    required this.abstract,
    required this.url,
    required this.uri,
    required this.byline,
    required this.itemType,
    required this.updatedData,
    required this.createdData,
    required this.publishedData,
    required this.desFacet,
    required this.orgFacet,
    required this.geoFacet,
    required this.multimedia,
    required this.perFacet,
  });

  final String section;
  final String subsection;
  final String title;
  final String abstract;
  final String url;
  final String uri;
  final String byline;
  final String itemType;
  final String updatedData;
  final String createdData;
  final String publishedData;
  final List<String> desFacet;
  final List<String> orgFacet;
  final List<String> perFacet;
  final List<String> geoFacet;
  final List<Multimedia> multimedia;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      perFacet: (json["per_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      orgFacet: (json["org_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      geoFacet: (json["geo_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      desFacet: (json["des_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      multimedia: (json["multimedia"] as List?)
              ?.map((item) => Multimedia.fromJson(item))
              .toList() ??
          [],
      section: json["section"] as String? ?? "",
      subsection: json["subsection"] as String? ?? "",
      title: json["title"] as String? ?? "",
      abstract: json["abstract"] as String? ?? "",
      url: json["url"] as String? ?? "",
      uri: json["uri"] as String? ?? "",
      byline: json["byline"] as String? ?? "",
      itemType: json["itemType"] as String? ?? "",
      updatedData: json["updatedData"] as String? ?? "",
      createdData: json["createdData"] as String? ?? "",
      publishedData: json["publishedData"] as String? ?? "",
    );
  }
}
