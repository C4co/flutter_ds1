import 'package:flutter/material.dart';

class DS1SnackBar {
  static show({
    required String message,
    required BuildContext context,
    SnackBarAction? action,
    bool error = false,
  }) {
    var snack = SnackBar(
      action: action,
      content: Row(
        children: [
          Flexible(
            child: Text(
              message,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }
}
