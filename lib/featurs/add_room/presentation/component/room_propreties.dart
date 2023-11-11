import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/number_of_child_and_years_component.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/number_rooms_component.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';

class RoomProperitesComponent extends StatelessWidget {
  const RoomProperitesComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomCubit, RoomState>(builder: (context, state) {
      return Card(
        color: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.romm1,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              NumberOfThingsComponent(
                  title: AppStrings.adults,
                  number: context.read<RoomCubit>().adultsNum),
              const SizedBox(
                height: 20,
              ),
              NumberOfThingsComponent(
                  title: AppStrings.children,
                  number: context.read<RoomCubit>().childrenNum),
              const SizedBox(
                height: 20,
              ),
              const NumberOfChildAndYearsComponent(
                number: 1,
                age: 14,
              ),
              const SizedBox(
                height: 20,
              ),
              const NumberOfChildAndYearsComponent(
                number: 2,
                age: 14,
              ),
            ],
          ),
        ),
      );
    });
  }
}
