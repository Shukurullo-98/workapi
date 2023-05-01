import 'dart:convert';

import 'mems.dart';

class DataList{
  DataList({required this.memes});
  final List<Memes> memes;


  factory DataList.fromJson(String stringMap){
    var jsonData = jsonDecode(stringMap) as List;
    List<Memes> memes =jsonData.map((mem) => Memes.fromJson(mem)).toList();

    return DataList(memes: memes);
  }

}