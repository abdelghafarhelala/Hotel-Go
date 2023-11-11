import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/button_icon_component.dart';

class NumberRoomsComponent extends StatelessWidget {
  final String title;
  final int number;
  final int index;
  const NumberRoomsComponent({
    super.key,
    required this.title,
    required this.number,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            NumberOfThingsComponent(title: title, number: number, index: index),
      ),
    );
  }
}

class NumberOfThingsComponent extends StatelessWidget {
  const NumberOfThingsComponent({
    super.key,
    required this.title,
    required this.number,
    required this.index,
  });

  final String title;
  final int number;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        ButtonIconComponent(
            icon: Icons.remove, title: title, index: index, number: number),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$number ',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 20,
        ),
        ButtonIconComponent(
          icon: Icons.add,
          title: title,
          index: index,
          number: number,
        ),
      ],
    );
  }
}
