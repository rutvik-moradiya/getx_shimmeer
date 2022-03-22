import 'package:flutter/material.dart';
import 'package:untitled/controller/profile_controller/base_profile_controller.dart';
import 'package:get/get.dart';
class simpleTixController extends BaseProfileController with SingleGetTickerProviderMixin{


late TabController tabController =TabController(length: 4, vsync: this,initialIndex: 0) ;

late var currentIndex = TabController(length: 4, vsync: this,initialIndex: 0).index.obs;



}
