
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {

  static myTheme() =>  ThemeData(
    primaryColor: AppColors.mainColor, // Define primary color
    hintColor: Colors.orangeAccent, // Define accent color
    fontFamily: 'Roboto', // Define default font family
    textTheme: TextTheme( // Define text styles
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.titleColor),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.paraColor),
    ),
    buttonTheme: ButtonThemeData( // Define button styles
      buttonColor: AppColors.buttonBackgroundColor, // Define default button color
      textTheme: ButtonTextTheme.primary, // Define default button text theme
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Define default button shape
    ),
    appBarTheme: AppBarTheme( // Define app bar styles
      color: Colors.yellow, // Define default app bar color
      titleTextStyle: TextStyle(color: AppColors.whiteColor),
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.buttonBackgroundColor), toolbarTextStyle: TextTheme( // Define app bar text styles
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.iconColor2),
      ).bodyMedium,  // Define default app bar icon color
    ),
    inputDecorationTheme: InputDecorationTheme( // Define input decoration styles
      fillColor: AppColors.whiteColor, // Define default fill color
      filled: true, // Enable default fill color
    ),
  );
}