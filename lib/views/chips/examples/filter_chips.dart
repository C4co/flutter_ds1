import 'package:flutter/material.dart';

class FilterChipsExample extends StatefulWidget {
  const FilterChipsExample({super.key});

  @override
  State<FilterChipsExample> createState() => _FilterChipsExampleState();
}

class _FilterChipsExampleState extends State<FilterChipsExample> {
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Wrap(
          spacing: 10,
          children: List<Widget>.generate(
            5,
            (int index) {
              return FilterChip(
                label: Text('Filter Chip $index'),
                selected: _filters.contains('Filter Chip $index'),
                onSelected: (bool value) {
                  setState(() {
                    if (value) {
                      _filters.add('Filter Chip $index');
                    } else {
                      _filters.removeWhere(
                        (String name) => name == 'Filter Chip $index',
                      );
                    }
                  });
                },
              );
            },
          ).toList(),
        ),
        const SizedBox(height: 10),
        Text('You have selected: ${_filters.join(', ')}'),
      ],
    );
  }
}
