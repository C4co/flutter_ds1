import 'package:flutter/material.dart';

class DS1Select extends StatefulWidget {
  final void Function(dynamic) onChange;
  final Map<String, dynamic> items;
  final String label;
  final String? Function(String?)? validator;
  final String placeholder;
  final IconData? icon;

  const DS1Select({
    super.key,
    required this.onChange,
    required this.items,
    required this.label,
    this.icon,
    this.validator,
    this.placeholder = 'Placegolder',
  });

  @override
  State<DS1Select> createState() => _DS1SelectState();
}

class _DS1SelectState extends State<DS1Select> {
  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      labelText: widget.label,
      hintText: widget.placeholder,
      prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
    );

    return DropdownButtonFormField(
      validator: widget.validator,
      icon: const Icon(Icons.expand_more),
      decoration: inputDecoration,
      elevation: 0,
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Theme.of(context).colorScheme.secondaryContainer,
      items: widget.items.keys.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
              // color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? value) {
        widget.onChange(widget.items[value]);
      },
    );
  }
}
