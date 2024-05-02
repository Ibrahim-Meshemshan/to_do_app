import 'package:flutter/material.dart';

class MyTheme{

  static Color primaryColor = Color(0xff5D9CEC);
  static Color whiteColor = Color(0xffffffff);
  static Color blackColor = Color(0xff383838);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color greyColor = Color(0xff707070);
  static Color grey = Color(0xffA9A9A9);
  static Color backGroundColor = Color(0xffDFECDB);
  static Color blackDarkColor = Color(0xff141922);
  static Color backGroundDarkColor = Color(0xff060e1e);




  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backGroundColor,
      appBarTheme: AppBarTheme(
        color: primaryColor,
        elevation: 0,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: whiteColor
          ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: blackColor,
        )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
          selectedItemColor: primaryColor,
          unselectedItemColor: greyColor,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          size: 30
        )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
      iconSize: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(color:backGroundColor,width: 3))
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          )),
    ),

  );
}