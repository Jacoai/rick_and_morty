part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    //extensions: <ThemeExtension<dynamic>>[ThemeColors.dark],
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.greenDark,
      unselectedItemColor: AppColors.brown,
      selectedItemColor: AppColors.brown,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.greenDark),
  );
}
