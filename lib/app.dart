import 'package:ds1/themes/ds1_theme.dart';
import 'package:flutter/material.dart';
import '/states/states.dart';
import 'core/core.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final theme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: theme.isDark,
      builder: (BuildContext context, bool value, Widget? child) {
        return MaterialApp.router(
          theme: ds1Theme(
            context: context,
            dark: value,
            color: Colors.purple,
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
