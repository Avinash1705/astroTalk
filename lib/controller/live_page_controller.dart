import 'dart:async';
import 'dart:convert';
import 'package:astrocom/model/livePage/LiveStreamerModel.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LivePageController extends GetxController {
  // get all users
  late LiveStreamerModel res ;
  Future<dynamic> getUsers() async {

    try {
      Map<String ,String> headers = {
        "Cookie":AppConstants.cookies,
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
      };
      print("url get"+AppConstants.allStreamers);
      var response = await http
          .get(Uri.parse(AppConstants.allStreamers),headers: headers)
          .timeout(const Duration(seconds: 10));

      res = LiveStreamerModel.fromJson(jsonDecode(response.body));
      return res;
    }
    on TimeoutException catch(timeout){
      return timeout;
    }
    on Exception catch (e) {
      print(e);
      return e;
    }
  }
}
