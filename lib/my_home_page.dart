  import 'package:flutter/material.dart';
import 'package:work_api/models/fourth/my_top_level_data.dart';
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
        title: const Text("Working Api"),
      ),
      body: FutureBuilder<MyTopLevelData>(
        future: Repository.getMyTopLevel(),
        builder: (BuildContext context, AsyncSnapshot<MyTopLevelData> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return Container(
              margin: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("server"),
                      Text(data.server.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("filesCount"),
                      Text(data.filesCount),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("LastUpdated"),
                      Text(data.d1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("d2"),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Text(data.d2)),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.files.length,
                      itemBuilder: (BuildContext context, index) {
                        var item = data.files[index];
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  offset: const Offset(1, 3))
                            ],
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Title: "),
                                  const SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(item.source),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
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
