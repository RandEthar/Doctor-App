
import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(  List<SpecializationsData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorModel apiErrorModel) =
      SpecializationsError;
   //Doctors
     const factory HomeState.doctorSuccess(    List<Doctors?>? doctorsList) = DoctorSuccess;
  const factory HomeState.doctorError() =
     DoctorError;
}
