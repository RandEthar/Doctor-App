import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specializationsDataList});
  final  List<SpecializationsData?>?specializationsDataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100.h,
      child: ListView.builder(
        itemCount:specializationsDataList!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return DoctorSpecialityListViewItem(itemIndex :index,specializationsData:specializationsDataList![index] ,);
      }),
    );
  }
}