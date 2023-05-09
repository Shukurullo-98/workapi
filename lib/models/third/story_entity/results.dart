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
    required this.desfacet,
    required this.orgfacet,
    required this.geofacet,
    required this.multimedia,
    required this.perfacet,
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
  final List<String> desfacet;
  final List<String> orgfacet;
  final List<String> perfacet;
  final List<String> geofacet;
  final List<Multimedia> multimedia;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
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
      desfacet: (json["des_facet"] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      orgfacet: (json["org_facet"] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      geofacet: (json["geo_facet"] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      multimedia: (json["multimedia"] as List).map((item) => Multimedia.fromJson(item)).toList(),
      perfacet: (json["per_facet"] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
    );
  }
}
