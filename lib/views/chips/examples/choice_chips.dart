import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class ChoiceChipsExample extends StatefulWidget {
  const ChoiceChipsExample({super.key});

  @override
  State<ChoiceChipsExample> createState() => _ChoiceChipsExampleState();
}

class _ChoiceChipsExampleState extends State<ChoiceChipsExample> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DS1Text('Choice Chips', fontSize: 14),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          children: [
            ChoiceChip(
              label: const DS1Text('One', fontSize: 14),
              selected: _value == 1,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? 1 : 0;
                });
              },
            ),
            ChoiceChip(
              label: const DS1Text('Two', fontSize: 14),
              selected: _value == 2,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? 2 : 0;
                });
              },
            ),
            ChoiceChip(
              label: const DS1Text('Three', fontSize: 14),
              selected: _value == 3,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? 3 : 0;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
