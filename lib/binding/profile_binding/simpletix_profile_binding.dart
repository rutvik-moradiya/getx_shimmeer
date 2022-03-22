import 'package:untitled/controller/profile_controller/simpletix_controller.dart';
import 'package:get/get.dart';
class  SimpleTixBinding extends Bindings{

  @override
  void dependencies() {
    Get.put<simpleTixController>(simpleTixController());
  }
}