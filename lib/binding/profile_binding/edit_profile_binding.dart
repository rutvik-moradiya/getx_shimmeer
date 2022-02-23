import 'package:get/get.dart';
import 'package:untitled/controller/profile_controller/edit_profile_controller.dart';

class  EditProfileBinding extends Bindings{

  @override
  void dependencies() {
    Get.put<EditProfileController>(EditProfileController());
  }
}