import 'package:flutter/material.dart';
import 'package:template_flutter_provider/app/themes/app_colors.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.black,
    brightness: Brightness.dark,
  );
}
