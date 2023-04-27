import 'package:flutter/material.dart';

double borderRadius = 5;

BoxDecoration solidBox(BuildContext context) => BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Theme.of(context).primaryColor,
    );

BoxDecoration outlineBox(BuildContext context) => BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: Colors.black.withOpacity(0.2),
        width: 1,
      ),
    );

Color solidTextColor(BuildContext context) {
  return Theme.of(context).primaryColor.computeLuminance() > 0.5
      ? Theme.of(context).primaryColorDark
      : Colors.white;
}

Color outlineTextColor(BuildContext context) {
  return Theme.of(context).primaryColorDark;
}

dynamic normalPadding = const EdgeInsets.symmetric(horizontal: 18);
dynamic miniPadding = const EdgeInsets.symmetric(horizontal: 10);

double normalFontSize = 15;
double miniFontSize = 12;

double normalIconSize = 17;
double miniIconSize = 12;

double normalHeight = 40;
double miniHeight = 30;
