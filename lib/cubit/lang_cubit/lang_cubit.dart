import 'package:bloc/bloc.dart';
import 'package:halal/cubit/lang_cubit/lang_cubit_states.dart';

class LanguageCubit extends Cubit<LanguageState> {
  String currentLang = "uzb";
  int index = 0;
  LanguageCubit() : super(InitialState());

  void changeLanguage(String lang) {
    currentLang = lang;
    emit(ChangeLanguage());
  }

  void changeIndex(int indexAt) {
    index = indexAt;
    emit(ChangeLanguage());
  }
}
