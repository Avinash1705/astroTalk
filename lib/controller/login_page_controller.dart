import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../notification_service/local_notification.dart';
import '../routes/app_routes.dart';

class LoginPageController extends GetxController {
  TextEditingController number = TextEditingController();
  TextEditingController cookies = TextEditingController();

  Future<void> verifyNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${number.text}',
      verificationCompleted: (PhoneAuthCredential credential) {
        print("rawat completed $credential");
      },
      verificationFailed: (FirebaseAuthException e) {
        print("rawat failed$e");
      },
      codeSent: (String verificationId, int? resendToken) {
        /*show notification then route*/
        LocalNotification.showSimpleNotification(
            title: "Please Verify the Notification",
            body: "$resendToken",
            payload: "payload");
        Get.toNamed(AppRoutes.getVerifyOtpPage(number.text,resendToken.toString()));
        print("rawat codeSend$verificationId  $resendToken");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("rawat codeAutoRetrieval $verificationId");
      },
    );
  }
}
