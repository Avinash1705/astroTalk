import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;


  //330.83/5 = 66.06  width
  static double width5 = screenWidth / 66.06;
  static double width10 = screenWidth / 33.08;
  static double width15 = screenWidth / 22.06;
  static double width20 = screenWidth / 16.515;
  static double width30 = screenWidth / 11.03;
  static double width120 = screenWidth / 2.76;

  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  static double height100 = screenHeight / 8.44;
  static double height120 = screenHeight / 7.03;
  static double height140 = screenHeight / 6.03;

  //fonts
  static double fonts20 = screenHeight / 42.2;
  static double fonts16 = screenHeight / 52.75;
  static double fonts26 = screenHeight / 32.46;
}
