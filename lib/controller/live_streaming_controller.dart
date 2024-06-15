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
      Map<String ,String> headers = {
        "Cookie":AppConstants.cookies,
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
      };
      var res = await http
          .post(Uri.parse(
              "${AppConstants.addStreamers}?userId=${liveUserId.text}&firstName=${liveUserName.text}&liveId=${liveId.text}"),headers: headers)
          .timeout(Duration(seconds: 10));
      liveStreamingModel = LiveStreamingModel.fromJson(jsonDecode(res.body));
    } catch (e) {
      print(e);
    }
    return liveStreamingModel;
  }

//remove
  Future<RemoveStreamingModel> removeLiveStreamer(String liveId) async {
    Map<String ,String> headers = {
      "Cookie":AppConstants.cookies,
      "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
    };
    try {
      var res = await http
          .post(Uri.parse(
              "${AppConstants.deleteStreamers}?userId=$liveId"),headers: headers)
          .timeout(Duration(seconds: 10));
      removeStreamingModel =
          RemoveStreamingModel.fromJson(jsonDecode(res.body));
    } catch (e) {
      print(e);
    }
    return removeStreamingModel;
  }
}
