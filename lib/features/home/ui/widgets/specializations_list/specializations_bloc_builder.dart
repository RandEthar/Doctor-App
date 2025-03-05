import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';

import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previos, cuttent) =>
          cuttent is SpecializationsLoading ||
          cuttent is SpecializationsSuccess ||
          cuttent is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(specializationsLoading: () {
          return setUpLoading();
        }, specializationsSuccess: (specializationDataList) {
          List<SpecializationsData?>? specializationsList =
              specializationDataList;
          return setUpSuccess(specializationsList);
        }, specializationsError: (errorHandler) {
          return setUpError();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setUpLoading() {
    return Expanded(
      child: Column(
        children: [
          SpecialityShimmerLoading(),
          verticalSpace(8),
          DoctorsShimmerLoading()
        ],
      ),
    );
  }

  Widget setUpError() {
    return const SizedBox.shrink();
  }

  Widget setUpSuccess(specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList,
    );
  }
}
