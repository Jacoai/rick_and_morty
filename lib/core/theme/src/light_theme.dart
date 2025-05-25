part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.yellow,
    extensions: <ThemeExtension<dynamic>>[ThemeColors.light],
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.green,
      unselectedItemColor: AppColors.brown,
      selectedItemColor: AppColors.brown,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.green),
  );
}
