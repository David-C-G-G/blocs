import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({bool darkMode = true}) : super(ThemeState(isDarkMode: darkMode));

  void toggleTheme() {
    emit(ThemeState(isDarkMode: !state.isDarkMode));
  }

  void setDarkMode() {
    emit(const ThemeState(isDarkMode: true));
  }

  void lightMode() {
    emit(const ThemeState(isDarkMode: false));
  }

}
