import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()){
    on<ChangeTheme>((event, emit) {
      emit(ThemeChanged(event.themeData));
    });
  }
}
