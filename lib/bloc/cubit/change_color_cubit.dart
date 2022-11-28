import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'change_color_state.dart';

class ChangeColorCubit extends Cubit<ChangeColorState> {
  ChangeColorCubit() : super(ChangeColorInitial());

  void colorChange(Color? color) {
    emit(AppBarColorChange(colors: color));
  }
}
