import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

List<String> nationalities = [
  'United States',
  'Canada',
  'United Kingdom',
  'Germany',
  'France',
  // Add more nationalities as needed
];

class NationalityDropdown extends StatefulWidget {
  const NationalityDropdown({super.key});

  @override
  _NationalityDropdownState createState() => _NationalityDropdownState();
}

class _NationalityDropdownState extends State<NationalityDropdown> {
  String? selectedNationality;

  @override
  Widget build(BuildContext context) {
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
        value: selectedNationality,
        onChanged: (String? value) {
          setState(() {
            selectedNationality = value;
          });
        },
        items: nationalities.map((String nationality) {
          return DropdownMenuItem<String>(
            value: nationality,
            child: Text(nationality),
          );
        }).toList(),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: AppStrings.selectNationality,
          hintStyle: TextStyle(color: AppColors.primaryColor, fontSize: 18),
          border: InputBorder.none,
        ),
        isExpanded: true,
      ),
    );
  }
}
