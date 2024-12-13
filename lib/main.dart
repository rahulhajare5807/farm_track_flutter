// main.dart
import 'package:farm_track/Screens/Login/ui/login.dart';
import 'package:farm_track/utils/theme/bloc/theme_bloc.dart';
import 'package:farm_track/utils/theme/bloc/theme_state.dart';
import 'package:farm_track/utils/theme/data/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          ThemeData themeData = AppThemes.lightTheme;

          if (state is ThemeChanged) {
            themeData = state.themeData;
          }

          return MaterialApp(
            title: 'Theme Change Demo',
            theme: themeData,
            home: Login(),
          );
        },
      ),
    );
  }
}