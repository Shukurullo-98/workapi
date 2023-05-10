import 'package:work_api/models/third/story_entity/results.dart';

class TopLevel {
  TopLevel({
    required this.status,
    required this.copyRight,
    required this.section,
    required this.lastUpdated,
    required this.numResults,
    required this.results,
  });

  final String status;
  final String copyRight;
  final String section;
  final String lastUpdated;
  final int numResults;
  final List<Result> results;

  factory TopLevel.fromJson(Map<String, dynamic> json) {
    return TopLevel(
        status: json["status"] as String? ?? "",
        copyRight: json["copyright"] as String? ?? "",
        section: json["section"] as String? ?? "",
        lastUpdated: json["lastUpdated"] as String? ?? "",
        numResults: json["numResults"] as int? ?? 0,
        results: (json["results"] as List?)
                ?.map((e) => Result.fromJson(e))
                .toList() ??
            []);
  }
}
