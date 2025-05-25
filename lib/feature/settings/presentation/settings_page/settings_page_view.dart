import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/settings/models/settings_provider.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({super.key});

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  @override
  Widget build(BuildContext context) {
    bool isLighthTheme = SettingsProvider.read(context)?.isLightTheme ?? true;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 15),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: themeWidget(isLighthTheme),
      ),
    );
  }

  Widget themeWidget(bool isLigthTheme) {
    final WidgetStateProperty<Icon?> thumbIcon =
        WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return const Icon(Icons.light_mode_outlined);
          }
          return const Icon(Icons.dark_mode_outlined);
        });

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            width: 2,
            color:
                Theme.of(context).extension<ThemeColors>()?.accentColor ??
                AppColors.brown,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            overflowAlignment: OverflowBarAlignment.center,
            overflowSpacing: 15,
            children: [
              const Text('Сменить тему', style: AppTextStyles.h1),
              Switch(
                activeTrackColor: AppColors.green,
                value: isLigthTheme,
                onChanged: (value) async {
                  setState(() {
                    isLigthTheme = value;
                  });
                  await SettingsProvider.read(
                    context,
                  )?.changeTheme(isLigthTheme);
                },
                thumbIcon: thumbIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
