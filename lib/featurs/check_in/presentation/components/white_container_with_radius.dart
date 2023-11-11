import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';

class WhiteContaianerWithRadiusComponent extends StatelessWidget {
  final Widget child;
  const WhiteContaianerWithRadiusComponent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: child,
    );
  }
}
