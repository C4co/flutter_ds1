import 'package:ds1/components/text/text.dart';
import 'package:flutter/material.dart';
import 'tabs/components_tab.dart';
import 'tabs/examples_tab.dart';
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
                        leading: const Icon(Icons.home),
                        title: const Text('Home'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.chat),
                        title: const Text('Chat'),
                        onTap: () {},
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
                    ExampleTab(),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat),
                      label: 'Chat',
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
