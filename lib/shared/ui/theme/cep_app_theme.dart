import 'package:cep_app_clean_architecture/shared/ui/cep_app_colors.dart';
import 'package:flutter/material.dart';

sealed class CepAppTheme {
  static final ThemeData ligth = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: CepAppColors.primaryColor,
      onPrimary: CepAppColors.primaryColor,
      secondary: CepAppColors.secondaryColor,
      onSecondary: CepAppColors.secondaryColor,
      error: CepAppColors.errorColor,
      onError: CepAppColors.errorColor,
      surface: CepAppColors.lightBgColor,
      onSurface: CepAppColors.lightBgColor,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.black.withValues(alpha: 0.3),
      labelColor: CepAppColors.secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: CepAppColors.lightBgColor,
      hintStyle: TextStyle(
        color: Colors.grey.shade500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: CepAppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CepAppColors.primaryColor,
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: WidgetStatePropertyAll(Colors.white),
      thumbColor: const WidgetStatePropertyAll(CepAppColors.primaryColor),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: CepAppColors.primaryColor,
      titleTextStyle: TextStyle(
        color: CepAppColors.secondaryColor,
        fontSize: 16,
      ),
    ),
    scaffoldBackgroundColor: CepAppColors.lightBgColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: CepAppColors.blackColor,
        fontSize: 14,
      ),
      titleMedium: TextStyle(
        color: CepAppColors.blackColor,
        fontSize: 20,
      )
    )
  );

  static final ThemeData dark = ligth.copyWith(
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey.withValues(alpha: 0.3),
      labelColor: CepAppColors.primaryColor,
    ),
    appBarTheme: ligth.appBarTheme.copyWith(
      backgroundColor: Colors.black87,
    ),
    scaffoldBackgroundColor: CepAppColors.darkBgColor,
    brightness: Brightness.dark,
    colorScheme: ligth.colorScheme.copyWith(
      brightness: Brightness.dark,
      surface: CepAppColors.darkBgColor,
      onSurface: CepAppColors.darkBgColor,
    ),
    textTheme: ligth.textTheme.copyWith(
      bodyMedium: ligth.textTheme.bodyMedium!.copyWith(
        color: CepAppColors.whiteColor,
      ),
      titleMedium: ligth.textTheme.titleMedium!.copyWith(
        color: CepAppColors.whiteColor,
      ),
    ),
    inputDecorationTheme: ligth.inputDecorationTheme.copyWith(
      fillColor: CepAppColors.blackColor,
    ),
  );
}