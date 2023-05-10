import 'package:flutter/material.dart';
import 'package:work_api/repository/repository.dart';

import 'models/third/story_entity/top_level.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
        body: FutureBuilder<TopLevel>(
          future: Repository.getStories(),
          builder: (BuildContext context, AsyncSnapshot<TopLevel> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!;
              return Container(
                margin: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Status"),
                        Text(data.status),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Section"),
                        Text(data.section),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("LastUpdated"),
                        Text(data.lastUpdated),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("CopyRight"),
                        SizedBox(width: 10,),
                        Expanded(child: Text(data.copyRight)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Status"),
                        Text(data.status),
                      ],
                    ),
                    Expanded(child: ListView.builder(
                      itemCount: data.results.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container();
                      }
                      ))
                  ],
                ),
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
//
// ListView(
// children: List.generate(
// mems.length,
// (index) {
// var item = mems[index];
// return Container(
// margin: EdgeInsets.all(16),
// padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(16),
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// spreadRadius: 6,
// blurRadius: 5,
// offset: Offset(1, 3),
// color: Colors.grey.shade300,
// )
// ]),
// child: Column(
// children: [
// SizedBox(
// width: MediaQuery.of(context).size.width,
// height: 400,
// child: Image.network(item.url),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text("ID" ),
// Text(item.id, )
// ],
// ),
// SizedBox(height: 10,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text("Name" ),
// Text(item.name, )
// ],
// )
// ],
// ),
// );
// },
// ),
// );


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
