import 'package:dio/dio.dart';
import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/sheard_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
//!Private Constructor (An object cannot be created outside of the class itself.)
  DioFactory._();
  //!Singleton
  static Dio? dio;

  static Dio getDio() {
    Duration timeout = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!..options.connectTimeout = timeout;
      dio!..options.receiveTimeout = timeout;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseHeader: true));
  }

  static void addDioHeaders() async{
    dio?.options.headers = {
      "Accept": "application/json",
      'Authorization':
          'Bearer ${await SharedPreferencesHelper.getSecuredString(SharedPrefKeys.userToken)}',
    };
  }
    static void setTokenAfterLoggedIn(String token){
     dio?.options.headers = {
     
      'Authorization':
          'Bearer $token',
    };
  }
}
