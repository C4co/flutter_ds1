import 'package:flutter/material.dart';

class AppTheme {
  static final _instance = AppTheme._();

  AppTheme._();

  factory AppTheme() => _instance;

  final ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

  void toggleTheme() {
    isDark.value = !isDark.value;
  }
}
