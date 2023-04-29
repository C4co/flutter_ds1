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
        title: const DS1Text('Buttons'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    const DS1Button(
                      label: 'Full width button',
                      type: DS1ButtonType.solid,
                      fullWidth: true,
                    ),
                    const DS1Button(
                      label: 'Full width button',
                      type: DS1ButtonType.outline,
                      fullWidth: true,
                    ),
                    const DS1Button(
                      label: 'Button',
                      type: DS1ButtonType.solid,
                    ),
                    const DS1Button(
                      label: 'Button',
                      type: DS1ButtonType.outline,
                    ),
                    const DS1Button(
                      label: 'Button with icon',
                      type: DS1ButtonType.solid,
                      icon: Icons.access_time_sharp,
                    ),
                    const DS1Button(
                      label: 'Button with icon',
                      type: DS1ButtonType.outline,
                      icon: Icons.favorite,
                    ),
                    const DS1Button(
                      type: DS1ButtonType.solid,
                      isLoading: true,
                    ),
                    const DS1Button(
                      type: DS1ButtonType.outline,
                      isLoading: true,
                    ),
                    const DS1Button(
                      label: 'Mini button',
                      type: DS1ButtonType.solid,
                      size: 'mini',
                    ),
                    const DS1Button(
                      label: 'Mini button',
                      type: DS1ButtonType.outline,
                      size: 'mini',
                    ),
                    const DS1Button(
                      label: 'Mini button with icon',
                      type: DS1ButtonType.solid,
                      size: 'mini',
                      icon: Icons.favorite,
                    ),
                    const DS1Button(
                      label: 'Mini button with icon',
                      type: DS1ButtonType.outline,
                      size: 'mini',
                      icon: Icons.favorite,
                    ),
                    const DS1Button(
                      label: 'Button with icon',
                      type: DS1ButtonType.solid,
                      icon: Icons.favorite,
                      size: 'mini',
                      isLoading: true,
                    ),
                    const DS1Button(
                      label: 'Button with icon',
                      type: DS1ButtonType.outline,
                      icon: Icons.favorite,
                      size: 'mini',
                      isLoading: true,
                    ),
                    DS1Button(
                      label: 'Button with event',
                      type: DS1ButtonType.solid,
                      onTap: () {
                        DS1Dialog.show(
                          context: context,
                          title: 'Button tapped',
                          subtitle: 'Button with event tapped',
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
