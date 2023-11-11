import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/featurs/add_room/presentation/view_models/room_cubit/room_cubit.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/views/check_in_sceen.dart';

void main() {
  runApp(const HotelsCoApp());
}

class HotelsCoApp extends StatelessWidget {
  const HotelsCoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoomCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const CheckInScreen()),
    );
  }
}
