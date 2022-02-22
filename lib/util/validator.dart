import 'package:get/get.dart';

class Validator{
  static bool isEmailValid(String s) {
    return s != null && s.isNotEmpty /*&& GetUtils.isEmail(s)*/;
  }

  static bool isPasswordValid(String s) {
    return s != null &&
        s.isNotEmpty &&
        GetUtils.isLengthGreaterOrEqual(GetUtils.removeAllWhitespace(s), 6);
  }
}