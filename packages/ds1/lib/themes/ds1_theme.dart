import 'package:flutter/material.dart';

PageTransitionsTheme pageTransitionsTheme = const PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  },
);

ThemeData ds1Theme({
  required BuildContext context,
  bool dark = false,
  Color color = Colors.blue,
}) {
  final theme = Theme.of(context);

  return ThemeData(
    useMaterial3: true,
    // pageTransitionsTheme: pageTransitionsTheme,
    colorSchemeSeed: color,
    brightness: dark ? Brightness.dark : Brightness.light,
    appBarTheme: theme.appBarTheme.copyWith(
      centerTitle: true,
      titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
        fontSize: 20,
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
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
