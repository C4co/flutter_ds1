import 'package:flutter/material.dart';

double borderRadius = 5;

BoxDecoration solidBox(BuildContext context) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius),
    color: Theme.of(context).colorScheme.primary,
  );
}

BoxDecoration outlineBox(BuildContext context) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius),
    border: Border.all(
      color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.3),
      width: 1,
    ),
  );
}

Color solidTextColor(BuildContext context) {
  return Theme.of(context).colorScheme.onPrimary;
}

Color outlineTextColor(BuildContext context) {
  return Theme.of(context).colorScheme.primary;
}

dynamic normalPadding = const EdgeInsets.symmetric(horizontal: 25);
dynamic miniPadding = const EdgeInsets.symmetric(horizontal: 15);

double normalFontSize = 15;
double miniFontSize = 12;

double normalIconSize = 17;
double miniIconSize = 12;

double normalHeight = 40;
double miniHeight = 30;
