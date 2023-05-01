import 'package:ds1/ds1.dart';
import 'package:flutter/material.dart';
import './examples/choice_chips.dart';
import './examples/input_chips.dart';
import './examples/filter_chips.dart';
import './examples/action_chip.dart';

class ChipsPage extends StatefulWidget {
  const ChipsPage({super.key});

  @override
  State<ChipsPage> createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DS1Text('Chips'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ChoiceChipsExample(),
            Divider(height: 50),
            InputChipsExample(),
            Divider(height: 50),
            FilterChipsExample(),
            Divider(height: 50),
            ActionChipExample(),
          ],
        ),
      ),
    );
  }
}
