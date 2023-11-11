part of 'room_cubit.dart';

@immutable
abstract class RoomState {}

class RoomCubitInitial extends RoomState {}

class AppChangeRommsNumState extends RoomState {}

class AppChangeAdultsNumState extends RoomState {}

class AppChangeChildrenNumState extends RoomState {}
