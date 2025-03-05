import 'package:doctor_app/core/helpers/extension.dart';

import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeState.initial());
  final HomeRepo homeRepo;
  List<SpecializationsData?>? specializationList = [];
  void getSpecializations() async {
    emit(HomeState.specializationsLoading());

    final response = await homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
    specializationList = specializationsResponseModel.specializationDataList;
    getDoctorList(specializationId: specializationList?.first?.id );
    emit(HomeState.specializationsSuccess(specializationList));
    }, failure: (error) {
    emit(HomeState.specializationsError(error));
    });
  }

  void getDoctorList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        filterSpecializationDoctorsListBySpecializationId(specializationId);
        if (!doctorsList.isNullOrEmpty()) {
            emit(HomeState.doctorSuccess(doctorsList));
        } else {
            emit(HomeState.doctorError());
        }
  }

  List<Doctors?>? filterSpecializationDoctorsListBySpecializationId(
      int ?specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization!.id == specializationId)
        ?.doctorsList;
  }
}
