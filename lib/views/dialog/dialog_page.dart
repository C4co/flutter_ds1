import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DS1Text('Dialog'),
      ),
      body: Center(
        child: Wrap(
          children: [
            DS1Button(
              label: 'Open dialog',
              onTap: () {
                DS1Dialog.show(
                  context: context,
                  title: "Title",
                  subtitle: "Subtitle",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
