import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:confetti/confetti.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/profile_screen/profile_screen.dart';
import 'package:untitled/services/api_services.dart';

class BaseProfileController extends GetxController {
  ConfettiController confettiController =
      ConfettiController(duration: const Duration(seconds: 2));
  var selectedName = "".obs;
  RxList userList = [].obs;
  RxString userId = ''.obs;
  RxList userDetails = [].obs;
  RxBool isLoading = false.obs;


  ///Get User Details
  getUser(String userId) async {
    var response = await ApiService.getUserName(userId);
    var jsonData = json.decode(response.body);
    userDetails.add(jsonData);
    print(userDetails.value);

    update();
    Get.toNamed(ProfileScreen.pageId);

    return userDetails;

  }

  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 8;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width / 2, halfWidth / 2);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }


  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

}
