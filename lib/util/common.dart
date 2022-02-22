import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constant/constant.dart';


class Common {
  static const String strIsLogin = 'is_login';
  static const String strUserName = 'userName';
  static const String localeCode = 'localeCode';
  static const String strReAssign = 'reAssign';
  static const String noInternet = 'No Internet Connection';
  static const String strEnterFirstName = 'Enter first name';
  static const String strEnterName = 'First name';
  static const String strEnterEmployeeCode = 'Enter employee code';
  static const String strEmployeeCode = 'Employee code';
  static const String strAssignToMe = 'Assign to me';
  static const String strIfYouNot = 'If you are not';
  static const String strReleaseDeviceAndLogin = 'please release device and login with your account';
  static const String strReassign = 'Reassign';
  static const String strWelcome = 'Welcome!';
  static const String strDeviceIsAssignToYou = 'Device is assigned to you.';
  static const String strDeviceIsAssignTo = 'Device is assigned to ';

  static Future<String>? token;

  static bool get isAndroid => Platform.isAndroid;

  static bool get isIOS => Platform.isIOS;

  // static PackageInfo? packageInfo;

  static bool isNull(dynamic item) => item == null;
  static int? totalNotifications;

  static void getSnackBar(String title, String description,
      {int duration = 2, SnackPosition position = SnackPosition.BOTTOM}) {
    Get.snackbar(title, description,
        snackPosition: position, duration: Duration(seconds: duration));
  }

  // check internet function
  static Future<bool> checkInternetConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      await Fluttertoast.showToast(msg: Common.noInternet);
      return false;
    }
    return true;
  }

  // store boolean preference data
  static void storeBoolPrefData(String key, bool res) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, res);
  }

  // retrieve boolean preference data
  static Future<bool> retriveBoolPrefData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool b = prefs.getBool(key) ?? false;
    return b;
  }

  // store string preference data
  static void storePrefData(String key, String res) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, res);
  }

  // store int preference data
  static void storeIntPrefData(String key, int res) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, res);
  }

  // clear all preference data
  static void clearPrefData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
  }

  // static List<double> _stops = [0.0, 0.7];

  static BoxDecoration commonBackground() {
    return BoxDecoration(
        border: Border.all(
          color: Colors.white,
          // width: 0,
        ), //Border.all
        borderRadius: BorderRadius.circular(35),
     image: DecorationImage(
            image: AssetImage(ImagePath.background), fit: BoxFit.fill));
  }


  static BoxDecoration commonBackground1() {
    return BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0,
        ), //Border.all
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(

            image: AssetImage(ImagePath.background2), fit: BoxFit.fill));
  }


  // retrieve string preference data
  static  retrivePrefData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String str = prefs.getString(key) ?? '';
    return str;
  }

  /*No use In Device Tracker*/
/*
  // Display error message from response json
  static void displayErrorMessage(String response) {
    var data;
    var error;
    data = json.decode(response);
    error = data['errors'] as List;
    Fluttertoast.showToast(msg: error[0]['message'] as String);
  }

//get expiration time
  static Future<int> getExpirationTime() async {
    var res = await Common.retrivePrefData(Common.strUserName);
    return res.isNotEmpty
        ? DateTime.now()
            .add(Duration(seconds: jsonDecode(res)['expires_in']))
            .millisecondsSinceEpoch
        : DateTime.now().add(Duration(seconds: 1)).millisecondsSinceEpoch;
  }

  // check token expiry time
  static bool checkToken(expirationTime) {
    if (DateTime.now().millisecondsSinceEpoch >= expirationTime) {
      return false;
    }
    return true;
  }

  static String getFilterFormatDate(DateTime date) {
    return DateFormat('d-MMM-yyyy').format(date);
  }

  static String getFilterFormatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static Widget displayNoData(String errorMsg) {
    return Container(
      padding: EdgeInsets.all(12),
      width: Get.width,
      child: Center(
        child: Text(
          errorMsg,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorsConfig.colorWhite,
              fontFamily: Textstyle.robotoMedium,
              fontSize: 15),
        ),
      ),
    );
  }*/
}
