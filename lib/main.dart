import 'package:flutter/material.dart';
import 'package:to_do_app/MyTheme.dart';
import 'package:to_do_app/home/HomeScreen.dart';
import 'package:to_do_app/splash/SplashScreen.dart';

import 'home/Settings/Settings.dart';
import 'home/TaskList/Task_List_Tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        TaskListTab.routeName: (context) => TaskListTab(),
        Settings.routeName: (context) => Settings(),

      },
      theme: MyTheme.lightTheme
    );
  }
}
