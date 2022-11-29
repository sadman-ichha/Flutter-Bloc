part of 'text_change_cubit.dart';

@immutable
abstract class TextChangeState {}

class TextChangeInitial extends TextChangeState {}

class TextChange extends TextChangeState {
  final String? text;
  TextChange({this.text}) {
    ;
  }
}
