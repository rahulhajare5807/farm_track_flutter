import 'package:farm_track/utils/theme/bloc/theme_bloc.dart';
import 'package:farm_track/utils/theme/bloc/theme_event.dart';
import 'package:farm_track/utils/theme/data/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Theme Change Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                themeBloc.add(ChangeTheme(AppThemes.lightTheme));
              },
              child: Text('Light Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                themeBloc.add(ChangeTheme(AppThemes.darkTheme));
              },
              child: Text('Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                themeBloc.add(ChangeTheme(AppThemes.greenTheme));
              },
              child: Text('Green Theme'),
            ),
          ],
        ),
      ),
    );
  }
}