import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


class ApiService{
  final http.Client client = http.Client();
  void printResponse(
      Map<String, String> header, dynamic body,http.Response response
      ){
    debugPrint('Header  :$header');
    debugPrint('Body  :$body');
    debugPrint('Response  :$response');
  }

static Future<http.Response> getList()async{
    Map<String, String> header = {
      'app-id' : '6215d40da4314349c86edb97'
    };
    String url = "https://dummyapi.io/data/v1/user/";
    http.Response response = await http.get(Uri.parse(url),headers: header);

  return response;
  }
  static Future<http.Response> getUserName(String userId)async{
    Map<String, String> header = {
      'app-id' : '6215d40da4314349c86edb97'
    };
    String url = "https://dummyapi.io/data/v1/user/$userId";
    http.Response response = await http.get(Uri.parse(url),headers: header);
    return response;
  }
}