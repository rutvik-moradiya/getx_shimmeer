import 'package:get/get.dart';
import 'package:untitled/binding/binding.dart';
import 'package:untitled/screen/profile_screen/profile_screen.dart';

final List<GetPage> appPages = [
  // GetPage(
  //     name: SplashScreen.pageId,
  //     page: () => SplashScreen(),
  //     binding: SplashBinding()),
  GetPage(
      name: ProfileScreen.pageId,
      page: () => ProfileScreen(),
      binding: ProfileBinding()),

];
