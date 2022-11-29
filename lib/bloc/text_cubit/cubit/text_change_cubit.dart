import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_change_state.dart';

class TextChangeCubit extends Cubit<TextChangeState> {
  TextChangeCubit() : super(TextChangeInitial());
  void changeText(String text1) {
    emit(TextChange(text: text1));
  }
}
