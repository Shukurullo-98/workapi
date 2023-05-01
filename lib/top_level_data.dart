import 'package:work_api/data_list.dart';

class TopLevelData {
  TopLevelData({required this.data, required this.status});

  final String status;
  final DataList data;

  factory TopLevelData.fromJson(Map<String, Object?> json) {
    return TopLevelData(
        data: DataList.fromJson(json['memes'].toString()),
        status: json['success'] as String? ?? "");
  }
}
