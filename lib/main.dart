import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/core/navigation/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
