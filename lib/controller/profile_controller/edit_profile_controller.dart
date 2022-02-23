import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:untitled/controller/profile_controller/base_profile_controller.dart';
import 'package:untitled/services/api_services.dart';

class EditProfileController extends BaseProfileController {
  List userList = [].obs;
  var selectedName = "".obs;
  @override
  void errorHandler(e) {}

  void onInit() {
    confettiController.play();
    super.onInit();
  }

  getUserList() async {
    var apiResponce = await ApiService.getList();
    if (apiResponce.statusCode == 200) {
      var jsonData = json.decode(apiResponce.body);
      for (int i = 0; i < jsonData['data']; i++) {
        userList.add(jsonData['data']['firstName']);
      }
    }
    return userList;
  }


}
