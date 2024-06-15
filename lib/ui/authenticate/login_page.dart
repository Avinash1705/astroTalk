// import 'package:astrocom/routes/app_routes.dart';
// import 'package:astrocom/utils/app_colors.dart';
// import 'package:astrocom/utils/dimensions.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     String _selectedItem = '+91';
//     String _number = '';
//     final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               // decoration: BoxDecoration(
//               //     color: AppColors.whiteColor,
//               //     image: DecorationImage(
//               //       image: AssetImage("assets/images/img2.jpeg"),
//               //     )
//               // ),
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.start,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     color: AppColors.whiteColor,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "assets/images/astro_star.png",
//                           width: Dimensions.screenWidth,
//                           height: 150,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("Talk",style: TextStyle(fontSize: 20),),
//                         SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.yellowAccent.withOpacity(.4),
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10),
//                             topRight: Radius.circular(10))),
//                     child: Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(top: Dimensions.height10),
//                             decoration: BoxDecoration(
//                                 color: Colors.white70,
//                                 border: Border.all(color: Colors.blueAccent),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Text("First 2 chats are free"),
//                             )),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container (
//                           width: double.maxFinite,
//                           margin: EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             color: Colors.white70,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                             border:Border.all(color: Colors.black)
//                           ),
//                           child: Form(
//                             key: formKey,
//                             child: Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: TextFormField(
//                                 keyboardType: TextInputType.number,
//                                 maxLength: 10,
//                                 onChanged: (value){
//                                   // print("on change $value");
//                                 },
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white70,
//                                   filled: false,
//                                   // border: InputBorder.none,
//                                   labelText: 'Enter your Number',
//                                   icon: Container(
//                                     margin: EdgeInsets.only(top: 30,left: 20),
//                                     width: Dimensions.width20*5,
//                                     child: Row(
//                                       // mainAxisAlignment: MainAxisAlignment.center,
//                                       // crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Image.asset(
//                                           "assets/images/india.png",
//                                           width: Dimensions.width20*2,
//                                           height: Dimensions.height20*2,
//                                         ),
//                                         SizedBox(
//                                           width: Dimensions.width30/3,
//                                         ),
//                                         // SizedBox(
//                                         //   width: Dimensions.width30,
//                                         //   child:
//                                         // )
//                                         DropdownButton<String>(
//                                           value: _selectedItem,
//                                           onChanged: (String? newValue) {
//                                             setState(() {
//                                               _selectedItem = newValue!;
//                                             });
//                                           },
//                                           items: <String>[
//                                             '+91',
//                                             '+82',
//                                             '+84',
//                                             '+90'
//                                           ].map<DropdownMenuItem<String>>(
//                                                   (String value) {
//                                                 return DropdownMenuItem<String>(
//                                                   value: value,
//                                                   child: Text(value),
//                                                 );
//                                               }).toList(),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   // border: OutlineInputBorder(),
//                                 ),
//                                 validator: (value) {
//                                   print("va $value");
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please enter Phone Number';
//                                   }
//                                   else if(value.length < 10){
//                                     return 'Phone number length less';
//                                   }
//                                   else if(value.length == 10){
//                                     return null;
//                                   }
//                                   return null;
//                                 },
//                                 onSaved: (value) {
//                                   _number = value!;
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         InkWell(
//                           onTap: (){
//                             if(formKey.currentState!.validate()){
//                               formKey.currentState!.save();
//                               Get.toNamed(AppRoutes.getVerifyOtpPage(_number));
//                             }
//                           },
//                           child: Container(
//                             width: double.maxFinite,
//                             height: 40,
//                             margin: EdgeInsets.all(30),
//                             decoration: BoxDecoration(
//                                 color: Colors.black,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(14))),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Get OTP",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 SizedBox(width: 50,),
//                                 Icon(Icons.arrow_forward,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         RichText(
//                           text: TextSpan(
//                             style: TextStyle(
//                               fontSize: 10.0,
//                               color: AppColors.mainBlackColor,
//                             ),
//                             children: <TextSpan>[
//                               TextSpan(
//                                   text: 'By signing up ,you agree to our '),
//                               TextSpan(
//                                 text: 'Terms and Policy',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                               TextSpan(text: '!'),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
