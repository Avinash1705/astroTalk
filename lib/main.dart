import 'package:astrocom/helper/dependencies.dart';
import 'package:astrocom/routes/app_routes.dart';
import 'package:astrocom/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  init();
  runApp(const MyApp());
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
