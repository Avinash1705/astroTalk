import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class OtpVerifyController extends GetxController {

  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();
  TextEditingController con4 = TextEditingController();
  String urOtp = "";


  bool visibilty = true;
  var timer = "Verification Code expires in";

  void moveFocus(){
    // FocusNode node = FocusNode();
    //  node.nextFocus();
     print("urOtp ${con1.text} ${con2.text} ${con3.text} ${con4.text}");
     urOtp =  con1.text+con2.text+con3.text+con4.text;
     // update();
  }
  bool verifyOtp(int randomOtp){
    print("test $randomOtp $urOtp");
    if(randomOtp == int.parse(urOtp)){
      return true;
    }
    else {
      return false;
    }
  }
  void permissionForAndroid13AndAbove(){
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission();
  }
}
