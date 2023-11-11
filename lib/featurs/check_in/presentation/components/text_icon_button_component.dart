import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

class TextAndIConButtonComponent extends StatelessWidget {
  const TextAndIConButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            AppStrings.findHotels,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
          size: 50,
        )
      ],
    );
  }
}
