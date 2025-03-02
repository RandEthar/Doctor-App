import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class setUpSpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const setUpSpecializationsAndDoctorsBlocBuilder({super.key});
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
        }, specializationsSuccess: (specializationsResponseModel) {
          List<SpecializationsData?>? specializationsList =
              specializationsResponseModel.specializationDataList;
       return setUpSuccess( specializationsList) ;
        }, specializationsError: (errorHandler) {
          return setUpError();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setUpLoading() {
    return SizedBox(
        height: 100.h,
        child: Center(
            child: CircularProgressIndicator(
          color: ColorsManeger.mainBlue,
        )));
  }

  Widget setUpError() {
    return const SizedBox.shrink();
  }
   Widget setUpSuccess( specializationsList) {
    return    Expanded(
            child: Column(
              children: [
                DoctorSpecialityListView(
                  specializationsDataList: specializationsList ?? [],
                ),
                verticalSpace(12),
                DoctorsListView(
                  doctorsList: specializationsList?[0]?.doctorsList,
                )
              ],
            ),
          );
  }
}
