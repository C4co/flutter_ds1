import 'package:ds1/components/text/text.dart';
import 'package:flutter/material.dart';
import 'package:ds1/ds1.dart';

class DragableScrollableSheetPage extends StatefulWidget {
  const DragableScrollableSheetPage({super.key});

  @override
  State<DragableScrollableSheetPage> createState() =>
      _DragableScrollableSheetPageState();
}

class _DragableScrollableSheetPageState
    extends State<DragableScrollableSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DS1Text('Dragable Scrollable Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.9,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {},
                    subtitle: const Text('Description'),
                    title: Text('Item $index'),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
