import 'package:get/get.dart';
import 'package:dio/dio.dart';
class ProfileX extends GetxController{

  var _dio = Dio();

  Map<String,dynamic>? listTeam;

  Future <Map<String,dynamic>?> ListTeamX ()async{
    var result = await _dio.get('https://reqres.in/api/users?page=2');
    listTeam = result.data;
    update();
    return listTeam;
  }
}