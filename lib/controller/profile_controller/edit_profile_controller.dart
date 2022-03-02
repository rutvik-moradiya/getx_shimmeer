import 'dart:convert';

import 'package:untitled/controller/profile_controller/base_profile_controller.dart';
import 'package:untitled/services/api_services.dart';

class EditProfileController extends BaseProfileController {
  @override
  void errorHandler(e) {}

  void onInit() {
    confettiController.play();
    // getUserList();
    super.onInit();
  }

  String intialValue = "Select name";

 Future getUserList() async {
    var apiResponce = await ApiService.getList();
    if (apiResponce.statusCode == 200) {
      var jsonData = json.decode(apiResponce.body);
      var data = jsonData['data'];
      for (int i = 0; i < jsonData['data'].length; i++) {
        userList.add(jsonData['data'][i]);
        update();

      }
      print(userList);
      return userList.toList();
    }
  }
}
