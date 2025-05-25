import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/core/navigation/router.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/settings/models/settings_model.dart';
import 'package:rick_and_morty/feature/settings/models/settings_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  SharedPreferences prefs = getIt();
  bool? ligthTheme = prefs.getBool('isLightTheme');
  final model = SettingsModel(isLightTheme: ligthTheme, pref: prefs);

  runApp(SettingsProvider(model: model, child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isLighthTheme = SettingsProvider.watch(context)?.isLightTheme ?? true;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      themeMode: isLighthTheme ? ThemeMode.light : ThemeMode.dark,
    );
  }
}
