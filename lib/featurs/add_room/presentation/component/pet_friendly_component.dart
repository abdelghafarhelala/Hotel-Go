import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/component/switch_component.dart';

class PetFriendlyComponent extends StatelessWidget {
  const PetFriendlyComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      AppStrings.petFriendly,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  AppStrings.onlyShowStaysThatAllowPets,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
            SwitchComponent()
          ],
        ),
      ),
    );
  }
}
