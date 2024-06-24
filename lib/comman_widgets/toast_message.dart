
import 'package:astrocom/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage {
 static void toastMessage =  Fluttertoast.showToast(
  msg: "This is Center Short Toast",
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.TOP,
  timeInSecForIosWeb: 1,
  backgroundColor: AppColors.yellowColor,
  textColor: Colors.black,
  fontSize: 16.0
  );
}