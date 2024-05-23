import 'dart:convert';

import 'package:astrocom/model/livePage/RemoveStreamerModel.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:astrocom/model/livePage/LiveStreamingModel.dart';
import 'package:get/get.dart';

class LiveStreamingController extends GetxController {
  late LiveStreamingModel liveStreamingModel;
  late RemoveStreamingModel removeStreamingModel;
  TextEditingController liveUserName = TextEditingController();
  TextEditingController liveUserId = TextEditingController();
  TextEditingController liveId = TextEditingController();


  Future<LiveStreamingModel> createStreamer() async {
    try {
      var res = await http
          .post(Uri.parse(
              "${AppConstants.addStreamers}?userId=${liveUserId.text}&firstName=${liveUserName.text}&liveId=${liveId.text}"))
          .timeout(Duration(seconds: 10));
      liveStreamingModel = LiveStreamingModel.fromJson(jsonDecode(res.body));
      print("kkkk   createSteaner");
    } catch (e) {
      print(e);
    }
    return liveStreamingModel;
  }

//remove
  Future<RemoveStreamingModel> removeLiveStreamer(String liveId) async {
    try {
      var res = await http
          .post(Uri.parse(
              "${AppConstants.deleteStreamers}?userId=$liveId"))
          .timeout(Duration(seconds: 10));
      removeStreamingModel =
          RemoveStreamingModel.fromJson(jsonDecode(res.body));
      print("kkkk   removeSteaner");
    } catch (e) {
      print(e);
    }
    return removeStreamingModel;
  }
}
