import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

class ApplyButtonComponent extends StatelessWidget {
  const ApplyButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          AppStrings.apply,
          style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
