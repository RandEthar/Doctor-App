

import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constant.dart';
import 'package:doctor_app/features/home/data/apis/home_api_Constants.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';

import 'package:retrofit/retrofit.dart';


import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl :ApiConstant.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}