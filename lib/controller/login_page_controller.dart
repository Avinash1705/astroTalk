

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {

  TextEditingController number = TextEditingController();
  TextEditingController cookies = TextEditingController();

  Future<void> verifyNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91 8700056622',
      verificationCompleted: (PhoneAuthCredential credential) {
        print("rawat $credential");
      },
      verificationFailed: (FirebaseAuthException e) {
        print("rawat $e");
      },
      codeSent: (String verificationId, int? resendToken) {print("rawat $verificationId  $resendToken");},
      codeAutoRetrievalTimeout: (String verificationId) {print("rawat $verificationId"); },
    );
  }
}