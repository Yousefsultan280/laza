import 'package:dio/dio.dart';
class DioHelper{
  static late Dio _dio;

  static void initilaized(){
    _dio=Dio(
      BaseOptions(
        baseUrl: "https://api.escuelajs.co/api/v1/",
        connectTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),


      ),
    );
  }
  static Future <Response<dynamic>>getData(String path) async{
   var response=await _dio.get(path);
   return response;
  }

  static Future <Response<dynamic>> postData( {String? path,Map<String,dynamic>? body})async{
    var response=await _dio.post(path!,data:body );
    return response;
  }
}

