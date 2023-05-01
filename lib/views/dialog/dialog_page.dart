import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DS1Text('Dialog'),
      ),
      body: Center(
        child: Wrap(
          children: [
            DS1Button(
              label: 'Open dialog',
              onTap: () {
                DS1Dialog.show(
                  context: context,
                  title: "Title",
                  subtitle: "Subtitle",
                );
              },
            ),
            DS1Button(
              onTap: () {
                //dialog full screen
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black45,
                  transitionDuration: const Duration(milliseconds: 300),
                  transitionBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    return SlideTransition(
                      position: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      ).drive(
                        Tween<Offset>(
                          begin: const Offset(0, 0.9),
                          end: Offset.zero,
                        ),
                      ),
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return Stack(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          color: Colors.black.withOpacity(animation.value),
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSecondary,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height - 100,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      )
                    ]);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
