import 'package:astrocom/helper/dependencies.dart';
import 'package:astrocom/notification_service/local_notification.dart';
import 'package:astrocom/routes/app_routes.dart';
import 'package:astrocom/utils/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  init();
  await LocalNotification.init();
  // await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.myTheme(),
      getPages: AppRoutes.routes,
      initialRoute: "/",
    );
  }
}
