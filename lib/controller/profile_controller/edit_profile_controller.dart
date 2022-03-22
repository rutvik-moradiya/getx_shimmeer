import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:untitled/controller/profile_controller/base_profile_controller.dart';
import 'package:untitled/services/api_services.dart';
import 'package:progress_state_button/progress_button.dart';

class EditProfileController extends BaseProfileController {

  @override
  void errorHandler(e) {}

  void onInit()  {
    confettiController.play();
     getUserList();

    super.onInit();
  }
 bool isLoad = true;
 double progressValue = .75;
  String intialValue = "Select name";
  Rx<ButtonState> stateOnlyText = ButtonState.idle.obs;
  String selectedValue = 'Hello';
  RxString buttonState = "ButtonState.idle".obs;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item1',
    'Item2',
    'Item3',
    'Item4','Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  Future getUserList() async {
    var apiResponce = await ApiService.getList();
    if (apiResponce.statusCode == 200) {
      var jsonData = json.decode(apiResponce.body);
      var data = jsonData['data'];
      data.forEach((element) {
        userList.add(element['firstName']);
      });
      // for (int i = 0; i < jsonData['data'].length; i++) {
      //   userList.add(jsonData['data'][i]['firstName']);
      //   update();
      // }
      return userList.toList();
    }
  }

  void onPressed(){
    stateOnlyText.value = ButtonState.loading;
    print(stateOnlyText);
    // stateOnlyText.value = ButtonState.success;

  }

}
