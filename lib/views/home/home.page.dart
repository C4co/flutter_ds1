import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter DS1'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Buttons'),
            onTap: () => context.go('/buttons'),
          ),
          ListTile(
            title: const Text('Inputs'),
            onTap: () => context.go('/inputs'),
          ),
        ],
      ),
    );
  }
}
