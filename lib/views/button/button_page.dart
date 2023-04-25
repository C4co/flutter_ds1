import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DSButton(
                  label: 'Full width button',
                  type: DSButtonType.solid,
                  fullWidth: true,
                ),
                const SizedBox(height: 20),
                const DSButton(
                  label: 'Full width button',
                  type: DSButtonType.outline,
                  fullWidth: true,
                ),
                const SizedBox(height: 20),
                Wrap(
                  children: const [
                    DSButton(
                      label: 'Button',
                      type: DSButtonType.solid,
                    ),
                    SizedBox(width: 20),
                    DSButton(
                      label: 'Button',
                      type: DSButtonType.outline,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  direction: Axis.vertical,
                  children: const [
                    DSButton(
                      label: 'Button with icon',
                      type: DSButtonType.solid,
                      icon: Icons.access_time_sharp,
                    ),
                    DSButton(
                      label: 'Button with icon',
                      type: DSButtonType.outline,
                      icon: Icons.favorite,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  children: const [
                    DSButton(
                      type: DSButtonType.solid,
                      isLoading: true,
                    ),
                    DSButton(
                      type: DSButtonType.outline,
                      isLoading: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  children: const [
                    DSButton(
                      label: 'Mini button',
                      type: DSButtonType.solid,
                      size: 'mini',
                    ),
                    SizedBox(width: 20),
                    DSButton(
                      label: 'Mini button',
                      type: DSButtonType.outline,
                      size: 'mini',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  direction: Axis.vertical,
                  children: const [
                    DSButton(
                      label: 'Mini button with icon',
                      type: DSButtonType.solid,
                      size: 'mini',
                      icon: Icons.favorite,
                    ),
                    DSButton(
                      label: 'Mini button with icon',
                      type: DSButtonType.outline,
                      size: 'mini',
                      icon: Icons.favorite,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  children: const [
                    DSButton(
                      label: 'Button with icon',
                      type: DSButtonType.solid,
                      icon: Icons.favorite,
                      size: 'mini',
                      isLoading: true,
                    ),
                    SizedBox(width: 20),
                    DSButton(
                      label: 'Button with icon',
                      type: DSButtonType.outline,
                      icon: Icons.favorite,
                      size: 'mini',
                      isLoading: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  children: [
                    DSButton(
                      label: 'Button with event',
                      type: DSButtonType.solid,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('Alert Dialog'),
                              content: Text('This is an alert dialog'),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
