import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
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
                      number: context.read<RoomCubit>().roomsNum,
                      title: AppStrings.romms,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RoomProperitesComponent(),
                    const SizedBox(
                      height: 10,
                    ),
                    const PetFriendlyComponent(),
                    // const Spacer(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        minWidth: double.infinity,
                        color: AppColors.primaryColor,
                        onPressed: () {},
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
