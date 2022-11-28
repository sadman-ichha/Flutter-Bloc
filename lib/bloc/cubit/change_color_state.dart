part of 'change_color_cubit.dart';

@immutable
abstract class ChangeColorState {}

class ChangeColorInitial extends ChangeColorState {}

class AppBarColorChange extends ChangeColorState {
  final Color? colors;

  AppBarColorChange({this.colors});
}
