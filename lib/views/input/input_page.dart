import 'package:ds1/ds1.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Credit Card',
                prefixIcon: Icon(Icons.credit_card),
              ),
            ),
            const SizedBox(height: 20),
            DSTimePicker(
              label: "Timer picker",
              onChanged: (timer) {
                debugPrint(timer.toString());
              },
            ),
            const SizedBox(height: 20),
            const Expanded(child: SizedBox()),
            DSButton(
              label: 'Submit',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
