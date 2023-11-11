import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

class SwitchComponent extends StatefulWidget {
  const SwitchComponent({
    super.key,
  });

  @override
  State<SwitchComponent> createState() => _SwitchComponentState();
}

bool light = false;

class _SwitchComponentState extends State<SwitchComponent> {
  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        return null;
      },
    );
    return Switch(
      inactiveTrackColor: Colors.grey.shade400,
      inactiveThumbColor: Colors.grey.shade400,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
      value: light,
      activeColor: AppColors.primaryColor,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}
