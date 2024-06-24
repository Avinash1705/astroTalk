


import 'dart:async';

import 'package:astrocom/controller/live_page_controller.dart';
import 'package:astrocom/controller/live_streaming_controller.dart';
import 'package:astrocom/controller/login_page_controller.dart';
import 'package:astrocom/controller/verify_otp_controller.dart';
import 'package:get/get.dart';


Future<void> init() async {
  Get.lazyPut(() => OtpVerifyController());
  Get.lazyPut(() => LivePageController());
  Get.lazyPut(() => LiveStreamingController());
  Get.lazyPut(() => LoginPageController());
}