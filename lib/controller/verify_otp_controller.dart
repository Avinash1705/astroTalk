import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerifyController extends GetxController {
  FocusNode node = FocusNode();
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();
  TextEditingController con4 = TextEditingController();

  bool visibilty = true;
  var timer = "Verification Code expires in";

  void moveFocus(){
     node.nextFocus();
     // update();
  }
}
