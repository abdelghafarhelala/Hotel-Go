import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/apply_button.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/header_component.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/number_rooms_component.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/pet_friendly_component.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/room_propreties.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';

class AddRoomScreen extends StatelessWidget {
  const AddRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomCubit, RoomState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height - 50,
          decoration: BoxDecoration(
              color: AppColors.gryColor,
              borderRadius: BorderRadius.circular(15)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderComponent(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      NumberRoomsComponent(
                        number: context.read<RoomCubit>().model!.length,
                        title: AppStrings.romms,
                        index: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      for (int i = 0;
                          i < context.read<RoomCubit>().model!.length;
                          i++)
                        RoomProperitesComponent(
                          index: i,
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      const PetFriendlyComponent(),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 6,
                      ),
                      const ApplyButtonComponent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
