import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/hotel_search_title_shape.dart';

class HotelSearchTitleComponent extends StatelessWidget {
  const HotelSearchTitleComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HotlSearchTitleShape(
          width: 178,
          height: 60,
          color: AppColors.whiteColor,
          child: SizedBox(),
        ),
        HotlSearchTitleShape(
          width: 175,
          height: 60,
          color: AppColors.primaryColor,
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 17, bottom: 20),
            child: Text(
              AppStrings.hotelsSearch,
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
