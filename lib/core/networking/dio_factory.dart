import 'package:dio/dio.dart';
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
}
