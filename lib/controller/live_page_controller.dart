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
      var response = await http
          .get(Uri.parse(AppConstants.allStreamers))
          .timeout(const Duration(seconds: 10));
      res = LiveStreamerModel.fromJson(jsonDecode(response.body));
      return res;
    }
    on TimeoutException catch(timeout){
      return timeout;
    }
    on Exception catch (e) {
      return e;
    }
  }
}
