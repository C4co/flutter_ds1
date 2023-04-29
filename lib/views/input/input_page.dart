import 'package:ds1/ds1.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();

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
        title: const DS1Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Normal Input',
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
              const SizedBox(height: 20),
              DS1TimePicker(
                label: "Timer picker",
                validator: (String? timer) {
                  if (timer == null || timer.isEmpty) {
                    return 'Please select time';
                  }
                  return null;
                },
                onChanged: (timer) {
                  debugPrint(timer.toString());
                },
              ),
              const SizedBox(height: 20),
              DS1DatePicker(
                label: "Date picker",
                validator: (String? date) {
                  if (date == null || date.isEmpty) {
                    return 'Please select date';
                  }
                  return null;
                },
                onChanged: (date) {
                  debugPrint(date.toString());
                },
              ),
              const SizedBox(height: 20),
              DS1Select(
                onChange: (event) {},
                icon: Icons.flag,
                items: items,
                label: "Select country",
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select country';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DS1Button(
                label: 'Submit',
                onTap: () {
                  if (_formKey.currentState!.validate()) {}
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
