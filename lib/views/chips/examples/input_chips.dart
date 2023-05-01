import 'package:ds1/ds1.dart';
import 'package:flutter/material.dart';

class InputChipsExample extends StatefulWidget {
  const InputChipsExample({super.key});

  @override
  State<InputChipsExample> createState() => _InputChipsExampleState();
}

class _InputChipsExampleState extends State<InputChipsExample> {
  final List<String> _chipList = <String>[];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DS1Text('Input Chips', fontSize: 14),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              ..._chipList.map(
                (String chip) => InputChip(
                  label: DS1Text(chip, fontSize: 14),
                  onDeleted: () {
                    setState(() {
                      _chipList.remove(chip);
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              labelText: 'New chip',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          DS1Button(
            label: "Add chip",
            size: "mini",
            onTap: () {
              setState(() {
                String text = _textEditingController.text;

                if (text != "") {
                  _chipList.add(text);
                }

                _textEditingController.clear();
              });
            },
          ),
        ],
      ),
    );
  }
}
