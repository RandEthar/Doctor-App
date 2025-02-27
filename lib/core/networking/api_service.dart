import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constant.dart';
import 'package:doctor_app/features/login/data/model/login_request_body.dart';
import 'package:doctor_app/features/login/data/model/login_response.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/http.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstant.signup)
  Future<SignUpResponse> signup(
    @Body() SignUpRequestBody signupRequestBody,
  );
}
