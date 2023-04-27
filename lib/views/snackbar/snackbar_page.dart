import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars'),
      ),
      body: Center(
        child: DS1Button(
          label: 'Open snackbar',
          onTap: () {
            DS1SnackBar.show(
              action: SnackBarAction(label: 'Action', onPressed: () {}),
              message: 'This is a snackbar',
              context: context,
            );
          },
        ),
      ),
    );
  }
}
