import 'package:flutter/material.dart';
import '/core/core.dart';
import 'package:ds1/ds1.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ds1Theme(context: context, color: DS1Colors.red),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
