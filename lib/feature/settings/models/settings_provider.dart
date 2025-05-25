import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/settings/models/settings_model.dart';

class SettingsProvider extends InheritedNotifier<SettingsModel> {
  final SettingsModel model;
  const SettingsProvider({super.key, required super.child, required this.model})
    : super(notifier: model);

  static SettingsModel? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SettingsProvider>()
        ?.model;
  }

  static SettingsModel? read(BuildContext context) {
    final widget =
        context
            .getElementForInheritedWidgetOfExactType<SettingsProvider>()
            ?.widget;

    return widget is SettingsProvider ? widget.notifier : null;
  }
}
