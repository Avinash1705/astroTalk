import 'dart:math';

import 'package:astrocom/model/livePage/LiveStreamerModel.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;
//join live
   LivePage({Key? key, required this.liveID, this.isHost = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = Random();
    print("live_page $liveID");
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: AppConstants.appId,
        appSign: AppConstants.appSign,
        userID: 'user_id${rng.nextInt(100)}',
        userName: 'user_name${{rng.nextInt(100)}}',
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
