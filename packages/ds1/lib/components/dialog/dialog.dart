import 'package:flutter/material.dart';

class DS1Dialog {
  static show({
    required BuildContext context,
    required String title,
    required String subtitle,
    List<Widget>? actions,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(subtitle),
        actions: actions,
      ),
    );
  }
}
