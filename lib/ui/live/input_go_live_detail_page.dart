import 'dart:math';

import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:astrocom/controller/live_streaming_controller.dart';
import 'package:astrocom/ui/live/live_streaming_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputGoLiveDetailPage extends StatefulWidget {
  InputGoLiveDetailPage({super.key});

  @override
  State<InputGoLiveDetailPage> createState() => _InputGoLiveDetailPageState();
}

class _InputGoLiveDetailPageState extends State<InputGoLiveDetailPage> {
  @override
  Widget build(BuildContext context) {
    LiveStreamingController liveStreamingController =
    Get.find<LiveStreamingController>();

    var rng = Random();
    setState(() {
      liveStreamingController.liveId.text = rng.nextInt(100000).toString();
    });
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: SmallText(text: "Detail Page"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: liveStreamingController.liveUserName,
              onChanged: (value) =>
                  "${liveStreamingController.liveUserName}${rng.nextInt(100)}",
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: liveStreamingController.liveUserId,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                liveStreamingController.liveUserId.text =
                    "$value${rng.nextInt(100)}";
              },
              decoration: const InputDecoration(
                icon: const Icon(Icons.supervised_user_circle_outlined),
                hintText: 'Enter a unique user id',
                labelText: 'User Id',
              ),
            ),
            TextFormField(
              readOnly: true,
              controller: liveStreamingController.liveId,
              onChanged: (value) {
                liveStreamingController.liveId.text =
                    "$value${rng.nextInt(100)}";
              },
              decoration: const InputDecoration(
                icon: const Icon(Icons.live_tv_sharp),
                hintText: 'Live Id',
                labelText: 'live Id',
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    Get.to(() => LiveStreamingPage(
                      liveId: liveStreamingController.liveId.text,
                      userName: liveStreamingController.liveUserName.text,
                      userId: liveStreamingController.liveUserId.text,
                    ));
                  }
                )),
          ],
        ),
      ),
    );
  }
}
