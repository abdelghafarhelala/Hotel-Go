import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

class SelcetCityTextFormFieldComponent extends StatelessWidget {
  const SelcetCityTextFormFieldComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          hintText: AppStrings.selectCity,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          hintStyle:
              const TextStyle(color: AppColors.primaryColor, fontSize: 18)),
      textAlign: TextAlign.center,
    );
  }
}
