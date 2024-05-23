import 'package:astrocom/comman_widgets/otp_container.dart';
import 'package:astrocom/controller/verify_otp_controller.dart';
import 'package:astrocom/routes/app_routes.dart';
import 'package:astrocom/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyOtp extends StatelessWidget {
  String? otpParameter;

  VerifyOtp({Key? key, this.otpParameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OtpVerifyController verifyController = Get.find<OtpVerifyController>();
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Verify Phone",
        style: TextStyle(color: AppColors.mainBlackColor),
      )),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("OTP send to $otpParameter",
                style: const TextStyle(color: AppColors.mainColor)),
            Divider(
              color: AppColors.mainBlackColor, // Color of the divider
              thickness: 2, // Thickness of the divider
              indent: 20, // Left indentation of the divider
              endIndent: 20, // Right indentation of the divider
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpContainer(
                    controller: verifyController.con1,
                    onChange: (value) => verifyController.moveFocus()),
                OtpContainer(
                    controller: verifyController.con2,
                    onChange: (value) => verifyController.moveFocus()),
                OtpContainer(
                    controller: verifyController.con3,
                    onChange: (value) => verifyController.moveFocus()),
                OtpContainer(
                    controller: verifyController.con4,
                    onChange: (value) => verifyController.moveFocus()),
              ],
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.getBottomNavPage(1));
              },
              child: Container(
                width: double.maxFinite,
                height: 40,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.mainBlackColor,
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            TweenAnimationBuilder(
                tween: Tween(begin: Duration(minutes: 1), end: Duration.zero),
                duration: Duration(minutes: 1),
                builder:
                    (BuildContext context, Duration? value, Widget? child) {
                  final minutes = value?.inMinutes;
                  final seconds = value!.inSeconds % 60;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${verifyController.timer}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Visibility(
                        visible: verifyController.visibilty,
                        child: Text(
                          " $minutes:$seconds",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
