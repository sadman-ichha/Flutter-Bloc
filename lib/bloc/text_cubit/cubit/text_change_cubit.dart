import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_change_state.dart';

class TextChangeCubit extends Cubit<TextChangeState> {
  TextChangeCubit() : super(TextChangeInitial());

  void changeText(String texts) {
    emit(TextChange(text: "This is Text"));
  }
}