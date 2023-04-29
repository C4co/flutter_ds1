import 'package:ds1/components/text/text.dart';
import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    //scafold
    return Scaffold(
      appBar: AppBar(
        title: const DS1Text('Text'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DS1Text('Hello World'),
              const DS1Text('Hello World', fontSize: 24),
              const DS1Text('Hello World', fontSize: 32),
              const DS1Text('Hello World', fontSize: 46),
              const SizedBox(height: 20),
              const DS1Text(
                'Hello World',
                fontSize: 30,
                bold: true,
              ),
              const SizedBox(height: 20),
              const DS1Text(
                'Hello World',
                fontSize: 20,
              ),
              const DS1Text(
                'Hello World',
                fontSize: 20,
              ),
              const DS1Text(
                'Hello World',
                fontSize: 20,
              ),
              const DS1Text(
                'Hello World',
                fontSize: 20,
              ),
              const DS1Text(
                'Hello World',
                fontSize: 20,
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: [
                  DS1Text(
                    'Hello World',
                    fontSize: 18,
                    fontColor: Colors.red.shade600,
                  ),
                  DS1Text(
                    'Hello World',
                    fontSize: 18,
                    fontColor: Colors.blue.shade600,
                  ),
                  DS1Text(
                    'Hello World',
                    fontSize: 18,
                    fontColor: Colors.green.shade600,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const DS1Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                fontSize: 16,
              ),
              const SizedBox(height: 10),
              const DS1Text(
                'Truncated text - Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                truncate: 40,
                fontSize: 16,
              ),
              const SizedBox(height: 10),
              const DS1Text(
                'Truncated text - Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                truncate: 20,
                fontSize: 16,
              ),
              const DS1Text(
                'Truncated Lorem Ipsum is simply dummy text',
                truncate: 20,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
