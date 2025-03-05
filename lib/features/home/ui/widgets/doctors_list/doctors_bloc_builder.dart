import 'package:doctor_app/core/networking/api_error_handilor.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(doctorSuccess: (doctorsList) {
          return setUpSuccess(doctorsList);
        }, doctorError: () {
          return setUpError();
        }, orElse: () {
          return SizedBox.shrink();
        });
      },
    );
  }

  Widget setUpSuccess(List<Doctors?>? doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setUpError() {
    return SizedBox.shrink();
  }
}
