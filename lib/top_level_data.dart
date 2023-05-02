import 'package:work_api/data_list.dart';
import 'package:work_api/mems.dart';

class TopLevelData {
  TopLevelData({required this.data, required this.status});

  final bool status;
  final DataList data;

  factory TopLevelData.fromJson(Map<String, dynamic> json) {
    var jsonData = json["data"]["memes"] as List;
    List<Memes> memes = jsonData.map((mem)=> Memes.fromJson(mem)).toList();
    return TopLevelData(
        data: DataList(memes: memes),
        status: json['success'] as bool? ?? false);
  }
}
