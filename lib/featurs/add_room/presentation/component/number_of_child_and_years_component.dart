import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';

class NumberOfChildAndYearsComponent extends StatelessWidget {
  final int number;
  final int age;
  const NumberOfChildAndYearsComponent({
    super.key,
    required this.number,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Text(
            '${AppStrings.ageOfChild} $number',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            '$age ${AppStrings.year}',
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
