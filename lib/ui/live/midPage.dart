import 'dart:convert';

import 'package:astrocom/controller/live_page_controller.dart';
import 'package:astrocom/controller/live_streaming_controller.dart';
import 'package:astrocom/model/livePage/LiveStreamerModel.dart';
import 'package:astrocom/ui/live/input_go_live_detail_page.dart';
import 'package:astrocom/ui/live/live_page.dart';
import 'package:astrocom/ui/live/live_streaming_page.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:astrocom/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MidPage extends StatefulWidget {
  const MidPage({super.key});

  @override
  State<MidPage> createState() => _MidPageState();
}

class _MidPageState extends State<MidPage> {
  LiveStreamerModel? response;

  @override
  void initState() {
    super.initState();
    LivePageController livePageController = Get.find<LivePageController>();

    livePageController.getUsers().then((value) {
      setState(() {
        response = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(() => InputGoLiveDetailPage());
              },
              child: Text("Go Live")),
          response == null
              ? CircularProgressIndicator()
              : SizedBox(
                  height: 300,
                  child: ListView.builder(
                      itemCount: response!.count,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.greenAccent[100],
                            child: SizedBox(
                              width: 300,
                              height: 250,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green[500],
                                      radius: 50,
                                      child:  CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "http://${AppConstants.ip}/astro/user1.png"),
                                        //NetworkImage
                                        radius: 100,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          '${response!.data![index].userName}',
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.w500,
                                          ), //Textstyle
                                        ),
                                        Text(
                                          '${response!.data![index].userId}',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green,
                                          ), //Textstyle
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: Dimensions.width120,
                                      child: ElevatedButton(
                                        onPressed: () =>
                                            Get.to(() => LivePage(
                                                  liveID: response!
                                                      .data![index].liveId
                                                      .toString(),
                                                )),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.touch_app),
                                              Text('Visit')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ) //SizedBox
                                  ],
                                ), //Column
                              ), //Padding
                            ), //SizedBox
                          ), //Card
                        );
                      }),
                )
        ],
      ),
    );
  }
}
