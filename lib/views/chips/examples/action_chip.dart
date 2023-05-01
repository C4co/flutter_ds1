//example of chip action with one item

import 'package:flutter/material.dart';

class ActionChipExample extends StatefulWidget {
  const ActionChipExample({super.key});

  @override
  State<ActionChipExample> createState() => _ActionChipExampleState();
}

class _ActionChipExampleState extends State<ActionChipExample> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Action chip'),
        ActionChip(
          avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
          label: const Text('Favorite'),
          onPressed: () {
            setState(() {
              favorite = !favorite;
            });
          },
        ),
      ],
    );
  }
}
