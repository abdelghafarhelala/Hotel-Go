import 'package:bloc/bloc.dart';
import 'package:hotelsco_task/core/app_const/app_const.dart';
import 'package:hotelsco_task/fake_api/fake_api.dart';
import 'package:meta/meta.dart';

part 'room_state.dart';

class RoomCubit extends Cubit<RoomState> {
  RoomCubit() : super(RoomCubitInitial());
  int roomsNum = 1;
  int childrenNum = 0;
  int adultsNum = 0;
  int roomIndex = 0;
  List<Map<String, int>>? model = [];
  Map<String, int>? seclectedItem = roomsApi[0];

  void changeRoomNumber({required Opretion opretion}) {
    if (opretion == Opretion.minus) {
      if (model!.isNotEmpty) {
        // roomsApi[roomIndex].update('room', (value) => value -= 1);
        model!.removeAt(model!.length - 1);
      }
    } else {
      if (model!.length < 6) {
        // roomsApi[roomIndex].update(
        //   'room',
        //   (value) => value += 1,
        //   ifAbsent: () => 1,
        // );
        model!.add({"adults": 0, "children": 0});
      }
    }
    emit(AppChangeRommsNumState());
  }

  void changeAdultsNumber({required Opretion opretion, required int index}) {
    if (opretion == Opretion.minus) {
      if (model![index]['adults']! > 0) {
        model![index].update('adults', (value) => value -= 1);
      }
    } else {
      if (model![index]['adults']! < 6) {
        model![index].update(
          'adults',
          (value) => value += 1,
          ifAbsent: () => 1,
        );
      }
    }
    emit(AppChangeAdultsNumState());
  }

  void changeChildrenNumber({required Opretion opretion, required int index}) {
    if (opretion == Opretion.minus) {
      if (model![index]['children']! > 0) {
        model![index].update('children', (value) => value -= 1);
      }
    } else {
      if (model![index]['children']! < 6) {
        model![index].update(
          'children',
          (value) => value += 1,
          ifAbsent: () => 1,
        );
      }
    }
    emit(AppChangeRommsNumState());
  }

  void addNewModel() {
    // print(seclectedItem);
    model!.add(seclectedItem!);

    emit(AppAddNewModelState());
  }
}
