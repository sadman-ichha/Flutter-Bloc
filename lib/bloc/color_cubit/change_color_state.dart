part of 'change_color_cubit.dart';

@immutable
abstract class ChangeColorState {}

class ChangeColorInitial extends ChangeColorState {}

class BodyColorChange extends ChangeColorState {
  final Color? colors;

  BodyColorChange({this.colors});
}
