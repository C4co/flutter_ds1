import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor ds1Color = MaterialColor(
  0xFF000000,
  <int, Color>{
    50: Color(0xFFE3E3E3),
    100: Color(0xFFc8c8c8),
    200: Color(0xFFA4A4A4),
    300: Color(0xFF818181),
    400: Color(0xFF666666),
    500: Color(0xFF515151),
    600: Color(0xFF434343),
    700: Color(0xFF383838),
    800: Color(0xFF313131),
    900: Color(0xFF000000),
  },
);

ThemeData ds1Theme({
  required BuildContext context,
  MaterialColor color = ds1Color,
}) {
  final textTheme = Theme.of(context).textTheme;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  PageTransitionsTheme pageTransitionsTheme = const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  );

  return ThemeData(
    pageTransitionsTheme: pageTransitionsTheme,
    primarySwatch: color,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 1,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: color.shade900,
      ),
      titleTextStyle: TextStyle(color: color.shade900, fontSize: 18),
      backgroundColor: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      labelStyle: const TextStyle(
        fontSize: 14,
      ),
      floatingLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: color.shade700,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.shade700),
        gapPadding: 8,
      ),
      border: const OutlineInputBorder(
        gapPadding: 8,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.robotoFlexTextTheme(textTheme),
  );
}
