import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/views/add_room_screen.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/date_pickers_component.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/nationality_drop_down_component.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/rooms_drop_down_component.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/select_city_text_field.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/text_icon_button_component.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/white_container_with_radius.dart';

class CheckInFormComponent extends StatelessWidget {
  const CheckInFormComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomCubit, RoomState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<RoomCubit>().addNewModel();
            showBottomSheet(context, const AddRoomScreen());
            print(context.read<RoomCubit>().model);
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 2.37,
                    decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          AppColors.primaryColor,
                          AppColors.secoundaryColor
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        WhiteContaianerWithRadiusComponent(
                          child: SelcetCityTextFormFieldComponent(),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        WhiteContaianerWithRadiusComponent(
                          child: DatePickersComponent(),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        NationalityDropdown(),
                        SizedBox(
                          height: 12,
                        ),
                        RoomsDropdown(),
                        // MyHomePage(),
                      ],
                    ),
                  ),
                ],
              ),
              const TextAndIConButtonComponent()
            ],
          ),
        );
      },
    );
  }

  void showBottomSheet(BuildContext context, Widget child) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return child;
      },
    );
  }
}
