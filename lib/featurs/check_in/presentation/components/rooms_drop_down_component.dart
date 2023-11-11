import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/fake_api/fake_api.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';

class RoomsDropdown extends StatefulWidget {
  const RoomsDropdown({super.key});

  @override
  _RoomsDropdownState createState() => _RoomsDropdownState();
}

class _RoomsDropdownState extends State<RoomsDropdown> {
  String? selectedRooms;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomCubit, RoomState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: DropdownButtonFormField(
            style: const TextStyle(color: AppColors.primaryColor, fontSize: 18),
            dropdownColor: AppColors.whiteColor,
            iconEnabledColor: AppColors.primaryColor,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 25,
            ),
            value: selectedRooms,
            onChanged: (String? value) {
              setState(() {
                selectedRooms = value;
                print(value);
              });
              changeValuesOfRoomsAndAdultsAndChildren(value, context);
              setState(() {});
            },
            items: roomsApi.map((room) {
              return DropdownMenuItem<String>(
                value:
                    '${room['room']} Room ${room['adults']} Adult Room ${room['childen']} Children',
                child: Text(
                    '${room['room']} Room ${room['adults']} Adult Room ${room['childen']} Children'),
              );
            }).toList(),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: AppStrings.selectRooms,
              hintStyle: TextStyle(color: AppColors.primaryColor, fontSize: 18),
              border: InputBorder.none,
            ),
            isExpanded: true,
          ),
        );
      },
    );
  }

  void changeValuesOfRoomsAndAdultsAndChildren(
      String? value, BuildContext context) {
    if (value?[0] == '1') {
      context.read<RoomCubit>().roomsNum = 1;
    }
    if (value?[7] == '0') {
      context.read<RoomCubit>().adultsNum = 0;
    } else if (value?[7] == '1') {
      context.read<RoomCubit>().adultsNum = 1;
    } else if (value?[7] == '2') {
      context.read<RoomCubit>().adultsNum = 2;
    }
    if (value?[20] == '0') {
      context.read<RoomCubit>().childrenNum = 0;
    } else if (value?[20] == '1') {
      context.read<RoomCubit>().childrenNum = 1;
    } else if (value?[20] == '2') {
      context.read<RoomCubit>().childrenNum = 2;
    }
  }
}
