import 'dart:math';

import 'package:astrocom/controller/live_streaming_controller.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveStreamingPage extends StatefulWidget {
  var userId;
  var userName;
  var liveId;

  LiveStreamingPage({
    super.key,
    required this.liveId,
    required this.userName,
    required this.userId,
  });

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage> {

  //go live page
  _LiveStreamingPageState();

  LiveStreamingController liveStreamingController =
      Get.find<LiveStreamingController>();

  @override
  void initState() {
    liveStreamingController
        .createStreamer()
        .then((value) => print("createStream $value"));
    super.initState();
  }

  @override
  void dispose() {
    print("kkk dispose called ${liveStreamingController.liveUserId.text}");
    liveStreamingController
        .removeLiveStreamer(liveStreamingController.liveUserId.text)
        .then((value) => "removeStream ${value}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltLiveStreaming(
      appID: AppConstants.appId,
      appSign: AppConstants.appSign,
      userID: widget.userId.toString(),
      userName: widget.userName.toString(),
      liveID: widget.liveId.toString(),
      config: ZegoUIKitPrebuiltLiveStreamingConfig.host(),
    );
  }
}
