import 'package:astrocom/controller/login_page_controller.dart';
import 'package:astrocom/routes/app_routes.dart';
import 'package:astrocom/utils/app_colors.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:astrocom/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
    String _number = '';

  @override
  Widget build(BuildContext context) {
    var loginController = Get.find<LoginPageController>();
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Hero(
              tag: "splash_icon",
              child: Image.asset(
                'assets/images/astro_star.png',
                // Make sure to add a relevant image in assets and update the path
                height: Dimensions.height140,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'Astrotalk',
              style: TextStyle(
                fontSize: Dimensions.fonts26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'First Chat with Astrologer is FREE!',
              style: TextStyle(
                fontSize: Dimensions.fonts16,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: <Widget>[
                CountryCodePicker(),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Phone number',
                    ),
                    keyboardType: TextInputType.phone,
                      controller: loginController.number
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height20),
            ElevatedButton(
              onPressed: () {
                _number = loginController.number.text;
                loginController.verifyNumber();
                // Handle OTP generation
                Get.toNamed(AppRoutes.getVerifyOtpPage(_number));
              },
              child: Text('GET OTP'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height15,
                    horizontal: Dimensions.width30),
              ),
            ),
            SizedBox(height: Dimensions.height45),
            TextFormField(
              controller: loginController.cookies,
            ),
            ElevatedButton(onPressed: () {
              AppConstants.cookies = loginController.cookies.text;
            }, child: Text("Cookies set"),),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InfoColumn(
                  label: '100% Privacy',
                ),
              ],
            ),
            SizedBox(height: Dimensions.height20),
          ],
        ),
      ),
    );
  }
}

class CountryCodePicker extends StatefulWidget {
  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  String _selectedItem = '+91';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width30 * 3 +Dimensions.width15,
      height: Dimensions.height30 * 2,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height10/2),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(Dimensions.height15),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Image.asset(
                                          "assets/images/india.png",
                                          width: Dimensions.width20,
                                          height: Dimensions.height20,
                                        ),
                                        SizedBox(
                                          width: Dimensions.width30/3,
                                        ),
            DropdownButton<String>(
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items: <String>['+91', '+82', '+84', '+90']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoColumn extends StatelessWidget {
  final String label;

  InfoColumn({required this.label});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: Dimensions.fonts20 /2,
          color: AppColors.mainBlackColor,
        ),
        children: <TextSpan>[
          TextSpan(text: 'By signing up ,you agree to our '),
          TextSpan(
            text: 'Terms and Policy',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextSpan(text: '!'),
        ],
      ),
    );
  }
}
