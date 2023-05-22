import 'package:http/http.dart' as https;
import 'dart:convert';
import 'package:http/http.dart';
import 'package:work_api/models/fourth/my_top_level_data.dart';
import '../models/third/story_entity/top_level.dart';
import '../top_level_data.dart';
import '../user_data.dart';

class Repository {
  static Future<UserData> getUserData() async {
    try {
      Response response =
          await https.get(Uri.parse("https://api.agify.io/?name=bella"));
      if (response.statusCode == 200) {
        UserData userData = UserData.fromJson(jsonDecode(response.body));
        return userData;
      } else {
        throw Exception();
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  static Future<TopLevelData> getMemes() async {
    try {
      Response response =
          await https.get(Uri.parse("https://api.imgflip.com/get_memes"));
      if (response.statusCode == 200) {
        TopLevelData topLevelData =
            TopLevelData.fromJson(jsonDecode(response.body));
        return topLevelData;
      } else {
        throw Exception();
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  static Future<TopLevel> getStories() async {
    Response response = await https.get(Uri.parse(
        "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=mD46rKtYMNXAYpzZSyvAXK3u2ANtQd4A"));
    if (response.statusCode == 200) {
      return TopLevel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception();
    }
  }

  static Future<MyTopLevelData> getMyTopLevel() async {
    Response response = await https.get(Uri.parse(
        "https://archive.org/metadata/TheAdventuresOfTomSawyer_201303"));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return MyTopLevelData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception();
    }
  }
}
