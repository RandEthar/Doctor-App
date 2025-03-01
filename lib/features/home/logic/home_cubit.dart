
import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeState.initial());
  final HomeRepo homeRepo;

  void getSpecializations() async {
    emit(HomeState.specializationsLoading());

    final response = await homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationsSuccess(
          specializationsResponseModel));
    }, failure: (error) {
      emit(HomeState.specializationsError(error));
    });
  }
}
