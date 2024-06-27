import 'package:astrocom/comman_widgets/home_bottom_nav.dart';
import 'package:astrocom/ui/authenticate/verify_otp.dart';
import 'package:astrocom/ui/call/call_page.dart';
import 'package:astrocom/ui/home/home_page.dart';
import 'package:astrocom/ui/live/live_page.dart';
import 'package:astrocom/ui/live/midPage.dart';
import 'package:astrocom/ui/pooja/pooja_page.dart';
import 'package:astrocom/ui/splash/splash_page.dart';
import 'package:get/get.dart';

import '../ui/splash/SplashScreen.dart';

class AppRoutes {

  // static String splashPage = "/splash";
  static String splashPage = "/";
  static String homePage = "/home";
  static String loginPage = "/login";
  static String verifyOtpPage = "/verify";
  static String livePage = "/live";
  static String callPage = "/call";
  static String poojaPage = "/pooja";
  static String homeBottomNavPage = "/homeBottomNav";
  static String testPage = "/testPage";

  //for argument
  static String getHomePage() => "$homePage";
  static String getSplashPage() => "$splashPage";
  static String getLoginPage() => "$loginPage";
  static String getLivePage() => "$livePage";
  static String getCallPage() => "$callPage";
  static String getPoojaPage() => "$poojaPage";
  static String getTestPage() => "$testPage";
  static String getBottomNavPage(int selection) => "$homeBottomNavPage?selectionPage=$selection";
  static String getVerifyOtpPage(String otp,String otpFirebase) => "$verifyOtpPage?otpParameter=$otp&&$verifyOtpPage?otpFirebase";

  //List for routes
  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => SplashPage()),
    GetPage(name: homePage, page: () => HomePage()),
    // GetPage(name: loginPage, page: () => LoginPage()),
    GetPage(name: livePage, page: () => LivePage(liveID: "12345")),
    GetPage(name: callPage, page: () => CallPage()),
    GetPage(name: poojaPage, page: () => PoojaPage()),
    GetPage(name: testPage, page: () => MidPage()),
    GetPage(name: homeBottomNavPage, page: ()  {
      int selectionIndex = int.parse(Get.parameters['selectionPage'].toString());
      return HomeBottomNavigationBar(selectionPage: selectionIndex);
    }),
    GetPage(name: verifyOtpPage, page: () {
      var otp = Get.parameters['otpParameter'];
      var otpFirebase = Get.parameters['otpFirebase'];
      return VerifyOtp(otpParameter: otp!, otpFirebase: otpFirebase!,);
    }),
  ];
}
