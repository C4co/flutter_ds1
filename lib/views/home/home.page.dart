import 'package:ds1/components/text/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'tabs/components_tab.dart';
import '/states/states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final theme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: theme.isDark,
      builder: (
        BuildContext context,
        bool value,
        Widget? child,
      ) {
        Icon icon = (value == true)
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode_outlined);

        return Scaffold(
          body: DefaultTabController(
            length: 2,
            child: Scaffold(
              drawer: Drawer(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: DS1Text('Components', bold: true, fontSize: 16),
                    ),
                    ListTile(
                      leading: const Icon(Icons.square_outlined),
                      title: const Text('Buttons'),
                      onTap: () => context.go('/buttons'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.edit_outlined),
                      title: const Text('Inputs'),
                      onTap: () => context.go('/Inputs'),
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
                ),
              ),
              appBar: AppBar(
                title: const DS1Text('DS1'),
                actions: [
                  IconButton(
                    onPressed: () {
                      theme.toggleTheme();
                    },
                    icon: icon,
                  ),
                ],
                bottom: const TabBar(
                  tabs: [
                    Tab(text: 'Components'),
                    Tab(text: 'Example'),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  ComponentsTab(),
                  Icon(Icons.directions_transit),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
