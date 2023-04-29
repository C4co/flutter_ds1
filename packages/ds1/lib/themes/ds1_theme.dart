import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData ds1Theme({
  required BuildContext context,
  bool dark = false,
  Color color = Colors.blue,
}) {
  final theme = Theme.of(context);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  PageTransitionsTheme pageTransitionsTheme = const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  );

  return ThemeData(
    useMaterial3: true,
    pageTransitionsTheme: pageTransitionsTheme,
    colorSchemeSeed: color,
    brightness: dark ? Brightness.dark : Brightness.light,
    appBarTheme: theme.appBarTheme.copyWith(
      centerTitle: true,
      titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
        fontSize: 16,
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    drawerTheme: DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 0,
      ),
      border: OutlineInputBorder(
        gapPadding: 4,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
  );
}
