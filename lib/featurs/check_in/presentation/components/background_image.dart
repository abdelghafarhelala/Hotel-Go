import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_assets.dart';

class BackgroundImageComponent extends StatelessWidget {
  const BackgroundImageComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.checkInBackgroundImagePath,
      fit: BoxFit.cover,
    );
  }
}
