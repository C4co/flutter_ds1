import 'package:ds1/ds1.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Map<String, dynamic> items = {
    '🇧🇷 Brasil': '1',
    '🇺🇸 United States': '2',
    '🇨🇦 Canada': '3',
    '🇦🇺 Australia': '4',
    '🇮🇳 India': '5',
    '🇨🇳 China': '6',
    '🇯🇵 Japan': '7',
    '🇰🇷 South Korea': '8',
    '🇩🇪 Germany': '9',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Normal Input',
                prefixIcon: Icon(Icons.edit),
              ),
            ),
            const SizedBox(height: 25),
            DS1TimePicker(
              label: "Timer picker",
              onChanged: (timer) {
                debugPrint(timer.toString());
              },
            ),
            const SizedBox(height: 25),
            DS1DatePicker(
              label: "Date picker",
              onChanged: (date) {
                debugPrint(date.toString());
              },
            ),
            const SizedBox(height: 25),
            DS1Select(
              onChange: (event) {},
              icon: Icons.flag,
              items: items,
              label: "Select country",
            ),
            const SizedBox(height: 25),
            DS1Button(
              label: 'Submit',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
