import 'package:flutter/material.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/background_image.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/check_in_form_component.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/hotel_search_title.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          BackgroundImageComponent(),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HotelSearchTitleComponent(),
                SizedBox(
                  height: 8,
                ),
                CheckInFormComponent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
