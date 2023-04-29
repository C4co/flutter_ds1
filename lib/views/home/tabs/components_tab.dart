import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ComponentsTab extends StatelessWidget {
  const ComponentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.square_outlined),
          title: const Text('Buttons'),
          onTap: () => context.go('/buttons'),
        ),
        ListTile(
          leading: const Icon(Icons.edit_outlined),
          title: const Text('Inputs'),
          subtitle: const Text('text fields, timer picker, date picker'),
          onTap: () => context.go('/inputs'),
        ),
        ListTile(
          leading: const Icon(Icons.call_to_action_outlined),
          title: const Text('Snackbars'),
          onTap: () => context.go('/snackbars'),
        ),
        ListTile(
          leading: const Icon(Icons.text_fields),
          title: const Text('Text'),
          onTap: () => context.go('/texts'),
        ),
      ],
    );
  }
}
