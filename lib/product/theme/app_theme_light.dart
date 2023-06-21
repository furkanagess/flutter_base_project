import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData.light().copyWith(
        colorScheme: _buildColorScheme,
      );

  ColorScheme get _buildColorScheme => ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blue.shade900,
        onPrimary: Colors.blue,
        secondary: Colors.black,
        onSecondary: Colors.black45,
        error: Colors.red,
        onError: Colors.orange,
        background: Colors.white,
        onBackground: Colors.white54,
        surface: Colors.yellow,
        onSurface: Colors.pink,
      );
}
