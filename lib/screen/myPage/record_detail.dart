import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_solution/model/community.dart';
import 'package:gdsc_solution/theme/custom_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RecordDetail extends StatefulWidget {
  const RecordDetail({Key? key}) : super(key: key);

  @override
  State<RecordDetail> createState() => _RecordDetailState();
}

class _RecordDetailState extends State<RecordDetail> {
  Community community = Community(
    uid: FirebaseAuth.instance.currentUser!.uid.toString(),
    city: Get.arguments['city'],
    map: Get.arguments['map'],
    view: Get.arguments['view'],
    time: Get.arguments['time'],
    distance: Get.arguments['distance'] as int,
    plogPoint: Get.arguments['plogPoint'] as int,
    runTime: Get.arguments['runTime'] as int,
    speed: Get.arguments['speed'] as double,
  );
  final commentController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Center(
                child: Text(
              'New post',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: uploadPost,
                icon: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 25,
                )),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: CustomColor.primaryPastel,
      body: SingleChildScrollView(
        child: Column(
          children: [
            StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if(!snapshot.hasData)
                    return CircularProgressIndicator();
                  var data = snapshot.data;
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromARGB(125, 158, 158, 158),
                                    width: 1),
                                top: BorderSide(
                                    color: Color.fromARGB(125, 158, 158, 158),
                                    width: 1))),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('${data!['image']}'),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: TextFormField(
                                  controller: commentController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(0, 15, 20, 15),
                                      hintText: "Enter text...",
                                      hintStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${data['nickname']}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Text(DateFormat('yy.MM.dd').format(community.time!),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Text('${community.city}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.network('${community.map}')),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.network('${community.view}')),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      runningInfo(
                          Icons.map, community.distance, 'km', 'Distance'),
                      runningInfo(
                          Icons.watch, community.runTime, 'min', 'Measure Time')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      runningInfo(Icons.recycling, community.plogPoint, 'times',
                          'Plogging'),
                      runningInfo(
                          Icons.man, community.speed, '', 'Average Speed')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  runningInfo(IconData ic, dynamic data, String type, String info) {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      height: (MediaQuery.of(context).size.width - 60) / 5,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: CustomColor.primary,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(ic, color: CustomColor.primary),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: info != 'Distance' ? '$data' : '${data / 1000}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  TextSpan(
                      text: ' $type',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ]),
              ),
              Text(info, style: TextStyle(fontSize: 12))
            ],
          )
        ],
      ),
    );
  }

  uploadPost() {
    community.comment = commentController.text;
    FirebaseFirestore.instance.collection('posts').add(community.toMap());
    Get.back();
  }
}