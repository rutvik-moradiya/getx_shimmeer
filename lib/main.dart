import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/constant/theme_config.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/screen/profile_screen/profile_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Demo Shimmer",
      initialRoute: ProfileScreen.pageId,
      theme: Themes.light,
      getPages: appPages,
    );
  }

}