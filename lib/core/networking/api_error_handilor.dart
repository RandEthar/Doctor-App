import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
              message:
                  "Connection failed: The request timed out while trying to connect to the server.");

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message:
                  "Send failed: The request timed out while sending data to the server.");

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message:
                  "Receive failed: The request timed out while waiting for a response from the server.");

        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: "Unknown error: An unexpected issue occurred.");

        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request canceled by the user.");

        case DioExceptionType.connectionError:
          return ApiErrorModel(
              message:
                  "Connection error: Please check your internet connection and try again.");

        case DioExceptionType.badCertificate:
          return ApiErrorModel(
              message:
                  "Invalid certificate: The server’s security certificate is not trusted.");

        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);

        default:
          return ApiErrorModel(
              message:
                  "Unknown error: An issue occurred while processing the request.");
      }
    } else {
      return ApiErrorModel(
          message: "Unknown error: Unable to process the request.");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    code: data['code'],
    message: data['message'] ??
        "An unexpected error occurred while processing the request.",
   errors: data['data'],
  );
}
