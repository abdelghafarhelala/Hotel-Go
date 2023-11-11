import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';

class DialogBodyComponent extends StatelessWidget {
  const DialogBodyComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        AppStrings.selectDate,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
