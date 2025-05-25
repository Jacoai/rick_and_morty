part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color accentColor;

  const ThemeColors({required this.accentColor});

  @override
  ThemeExtension<ThemeColors> copyWith({Color? accentColor}) {
    return ThemeColors(accentColor: accentColor ?? this.accentColor);
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
    );
  }

  static get light => const ThemeColors(accentColor: AppColors.brown);
  static get dark => const ThemeColors(accentColor: AppColors.yellow);
}
