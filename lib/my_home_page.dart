import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:work_api/top_level_data.dart';
import 'package:work_api/user_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<UserData> getUserData() async {
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

  Future<TopLevelData> getMemes() async {
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

  @override
  Widget build(BuildContext context) {
    return
        // return Scaffold(
        //   appBar: AppBar(
        //     title: Text("linkify"),
        //   ),
        //   body: Container(
        //     child: Center(
        //
        //       child: Linkify(text: "https://kun.uz",
        //         options: LinkifyOptions(humanize: false),
        //         onOpen: (link) async{
        //         await launchUrl(Uri.parse(link.url));
        //         print(link);
        //         },
        //       ),
        //     ),
        //   ),
        // );
        Scaffold(
      appBar: AppBar(
        title: Text("Working Api"),
      ),
      body: FutureBuilder<TopLevelData>(
        future: getMemes(),
        builder: (BuildContext context, AsyncSnapshot<TopLevelData> snapshot) {
          if (snapshot.hasData) {
            var mems = snapshot.data!.data.memes;
            return ListView(
              children: List.generate(
                mems.length,
                (index) {
                  var item = mems[index];
                  return Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 6,
                            blurRadius: 5,
                            offset: Offset(1, 3),
                            color: Colors.grey.shade300,
                          )
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          child: Image.network(item.url),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ID" ),
                            Text(item.id, )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name" ),
                            Text(item.name, )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}

// Scaffold(
// appBar: AppBar(
// title: Text("Working Api"),
// ),
// body: FutureBuilder<TopLevelData>(
// future: getMemes(),
// builder: (BuildContext context, AsyncSnapshot<TopLevelData> snapshot) {
// if (snapshot.hasData) {
// // TopLevelData? topLevelData = snapshot.data;
// return Container(
// child: Center(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text('name: '),
// Text(snapshot.data!.data.memes[0].name),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text('Age: '),
// // Text(userData.age.toString()),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text('Count: '),
// // Text(userData.count.toString()),
// ],
// ),
// ],
// ),
// ),
// );
// } else {
// return Container(
// child: Center(child: CircularProgressIndicator()),
// );
// }
// },
// ),
// );
