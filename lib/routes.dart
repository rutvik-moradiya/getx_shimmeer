import 'package:get/get.dart';
import 'package:untitled/binding/binding.dart';
import 'package:untitled/screen/profile_screen/edit_profile_screen.dart';
import 'package:untitled/screen/profile_screen/profile_screen.dart';
import 'package:untitled/screen/profile_screen/simpletix_screen.dart';

import 'binding/profile_binding/simpletix_profile_binding.dart';

final List<GetPage> appPages = [
  GetPage(
      name: EditProfileScreen.pageId,
      page: () => EditProfileScreen(),
      binding: EditProfileBinding()),
  GetPage(
      name: ProfileScreen.pageId,
      page: () => ProfileScreen(),
      binding: ProfileBinding()),
  GetPage(
      name: SimpleTixScreen.pageId,
      page: () => SimpleTixScreen(),
      binding: SimpleTixBinding()),

];
