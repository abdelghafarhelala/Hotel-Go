import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/app_const/app_const.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';

class ButtonIconComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;
  final int number;
  const ButtonIconComponent({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomCubit, RoomState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            addAndMinusNumbers(context, index);
          },
          child: Container(
            width: 43,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: getIconButtonColor(), width: 1.5)),
            child: Icon(
              icon,
              color: getIconButtonColor(),
              size: 30,
            ),
          ),
        );
      },
    );
  }

  Color getIconButtonColor() {
    return icon == Icons.add && title == AppStrings.adults && number < 6
        ? AppColors.primaryColor
        : icon == Icons.add && title == AppStrings.children && number < 4
            ? AppColors.primaryColor
            : icon == Icons.remove && title == AppStrings.adults && number > 0
                ? AppColors.primaryColor
                : icon == Icons.remove &&
                        title == AppStrings.children &&
                        number > 0
                    ? AppColors.primaryColor
                    : icon == Icons.remove &&
                            title == AppStrings.romms &&
                            number > 1
                        ? AppColors.primaryColor
                        : icon == Icons.add &&
                                title == AppStrings.romms &&
                                number < 6
                            ? AppColors.primaryColor
                            : AppColors.disableColor;
  }

  void addAndMinusNumbers(BuildContext context, int index) {
    if (icon == Icons.add) {
      if (title == AppStrings.romms) {
        context.read<RoomCubit>().changeRoomNumber(opretion: Opretion.plus);
      } else if (title == AppStrings.adults) {
        context
            .read<RoomCubit>()
            .changeAdultsNumber(opretion: Opretion.plus, index: index);
      } else if (title == AppStrings.children) {
        context
            .read<RoomCubit>()
            .changeChildrenNumber(opretion: Opretion.plus, index: index);
      }
    } else {
      if (title == AppStrings.romms) {
        context.read<RoomCubit>().changeRoomNumber(opretion: Opretion.minus);
      } else if (title == AppStrings.adults) {
        context
            .read<RoomCubit>()
            .changeAdultsNumber(opretion: Opretion.minus, index: index);
      } else if (title == AppStrings.children) {
        context
            .read<RoomCubit>()
            .changeChildrenNumber(opretion: Opretion.minus, index: index);
      }
    }
  }
}
