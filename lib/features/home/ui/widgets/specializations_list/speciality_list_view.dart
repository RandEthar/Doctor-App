import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationsDataList});
  final List<SpecializationsData?>? specializationsDataList;

  @override
  State<SpecialityListView> createState() => _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<SpecialityListView> {
  int selectedSpecializationsIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          itemCount: widget.specializationsDataList!.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  setupSpecializyClick(index, context);
                },
                child: SpecialityListViewItem(
                  itemIndex: index,
                  specializationsData: widget.specializationsDataList![index],
                  selectedSpecializationsIndex: selectedSpecializationsIndex,
                ));
          }),
    );
  }

  void setupSpecializyClick(int index, BuildContext context) {
    setState(() {
      selectedSpecializationsIndex = index;
    });

    context.read<HomeCubit>().getDoctorList(
        specializationId: widget.specializationsDataList?[index]?.id);
  }
}
