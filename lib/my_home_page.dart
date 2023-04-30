import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';
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
      UserData userData = UserData.fromJson(jsonDecode(response.body));
      return userData;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working Api"),
      ),
      body: FutureBuilder<UserData>(
        future: getUserData(),
        builder: (BuildContext context, AsyncSnapshot<UserData> snapshot) {
          if (snapshot.hasData) {
            UserData? userData = snapshot.data;
            return Container(
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('name: '),
                        Text(userData!.name),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age: '),
                        Text(userData.age.toString()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Count: '),
                        Text(userData.count.toString()),
                      ],
                    ),
                  ],
                ),
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
