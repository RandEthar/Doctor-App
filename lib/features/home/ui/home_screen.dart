import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_bluy_contener.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list_view.dart';

import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, bottom: 28.h, top: 16.h),
        child: SafeArea(
          child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeTopBar(),
                  DoctorsBluyContener(),
                  verticalSpace(16),
                  DoctorSpecialitySeeAll(),
                  verticalSpace(16),
                  BlocBuilder<HomeCubit, HomeState>(
                    buildWhen: (previos,cuttent)=>cuttent is SpecializationsLoading||
                    cuttent is SpecializationsSuccess||  cuttent is SpecializationsError,
                    builder: (context, state) {
                      return state.maybeWhen(specializationsLoading: (){
                         return SizedBox(
                          height: 100.h,
                          child: Center(child: CircularProgressIndicator(color: ColorsManeger.mainBlue,)));
                      },
                      specializationsSuccess: (specializationsResponseModel){
                     List<SpecializationsData?>? specializationsList=specializationsResponseModel.specializationDataList;
                        return Column(
                          children: [
                            DoctorSpecialityListView(specializationsDataList: specializationsList??[],),
                             verticalSpace(12),
                             DoctorsListView()
                          ],
                        );
                      },
                      specializationsError: (errorHandler){
                             return const SizedBox.shrink();  
                      },orElse: (){
                        return const SizedBox.shrink();
                      });
                    },
                  ),
                  //verticalSpace(16),
                  // RecommendationDoctor(),
                  // verticalSpace(12),
                  // DoctorsListView()
                ],
              )),
        ),
      ),
    );
  }
}
// DoctorSpecialityListView();