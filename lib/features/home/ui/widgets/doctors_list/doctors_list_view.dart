import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});


final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount:doctorsList!.length ,
        itemBuilder: (context, index) {
        return DoctorsListViewItem(doctorModel:doctorsList?[index]);
      }),
    );
  }
}
