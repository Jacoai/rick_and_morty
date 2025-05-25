part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color accentColor;
  final Color green;

  const ThemeColors({required this.accentColor, required this.green});

  @override
  ThemeExtension<ThemeColors> copyWith({Color? accentColor, Color? green}) {
    return ThemeColors(
      accentColor: accentColor ?? this.accentColor,
      green: green ?? this.green,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      green: Color.lerp(accentColor, other.accentColor, t)!,
    );
  }

  static get light =>
      const ThemeColors(accentColor: AppColors.brown, green: AppColors.green);
  static get dark => const ThemeColors(
    accentColor: AppColors.yellow,
    green: AppColors.greenDark,
  );
}
