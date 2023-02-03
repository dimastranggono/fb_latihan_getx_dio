import 'package:dio/dio.dart';
import 'package:get/get.dart';
class DataProduct extends GetxController{
  var _dio = Dio();

   Map<String, dynamic>? dataProdak;
   List produk = [];

    Future<Map<String,dynamic>?> getDataProdak ()async{
       await Future.delayed(Duration(seconds: 3));
      var result = await _dio.get('https://fakestoreapi.com/products');
      dataProdak = result.data;
      update();
    } 

    Future<List?> getDataListProduk ()async{
       await Future.delayed(Duration(seconds: 3));
      var result = await _dio.get('https://fakestoreapi.com/products');
      produk = result.data;
      update();
    } 
}