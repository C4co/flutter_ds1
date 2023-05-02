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
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.edit_outlined),
          title: const Text('Inputs and pickers'),
          onTap: () => context.go('/inputs'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.call_to_action_outlined),
          title: const Text('Snackbars'),
          onTap: () => context.go('/snackbars'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.text_fields),
          title: const Text('Text'),
          onTap: () => context.go('/texts'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.border_bottom_outlined),
          title: const Text('Bottom sheet'),
          onTap: () => context.go('/bottom-sheet'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text('Checkbox'),
          onTap: () => context.go('/checkbox'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.auto_awesome_motion),
          title: const Text('Dialog'),
          onTap: () => context.go('/dialog'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.label_rounded),
          title: const Text('Chips'),
          onTap: () => context.go('/chips'),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.drag_handle_outlined),
          title: const Text('Dragable scrollable sheet'),
          onTap: () => context.go('/dragable-scrollable-sheet'),
        ),
      ],
    );
  }
}
