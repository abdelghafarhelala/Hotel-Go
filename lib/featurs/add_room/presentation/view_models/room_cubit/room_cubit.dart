import 'package:bloc/bloc.dart';
import 'package:hotelsco_task/core/app_const/app_const.dart';
import 'package:meta/meta.dart';

part 'room_state.dart';

class RoomCubit extends Cubit<RoomState> {
  RoomCubit() : super(RoomCubitInitial());
  int roomsNum = 1;
  int childrenNum = 0;
  int adultsNum = 0;

  void changeRoomNumber({required Opretion opretion}) {
    if (opretion == Opretion.minus) {
      if (roomsNum > 0) {
        roomsNum--;
      }
    } else {
      if (roomsNum < 6) {
        roomsNum++;
      }
    }
    emit(AppChangeRommsNumState());
  }

  void changeAdultsNumber({required Opretion opretion}) {
    if (opretion == Opretion.minus) {
      if (adultsNum > 0) {
        adultsNum--;
      }
    } else {
      if (adultsNum < 6) {
        adultsNum++;
      }
    }
    emit(AppChangeAdultsNumState());
  }

  void changeChildrenNumber({required Opretion opretion}) {
    if (opretion == Opretion.minus) {
      if (childrenNum > 0) {
        childrenNum--;
      }
    } else {
      if (childrenNum < 4) {
        childrenNum++;
      }
    }
    emit(AppChangeRommsNumState());
  }
}
