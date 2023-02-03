import 'package:dio/dio.dart';
import 'package:get/get.dart';
class LoginX extends GetxController{
  var _dio = Dio();

  String? email;
  String? password;

  void inputEmail(String imel){
    email = imel;
    update();
  }

  void inputPassword(String pass){
    password = pass;
    update();
  }

  Future loginUser({String? imel, String? pass}) async{
    var result = await _dio.post('https://reqres.in/api/login',
    data: {
      'username' : email,
      'password' : password
    });
    update();
    return result;
  }
}