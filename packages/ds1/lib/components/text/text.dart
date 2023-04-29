import 'package:flutter/material.dart';

class DS1Text extends StatefulWidget {
  final String content;
  final double? fontSize;
  final Color? fontColor;
  final bool bold;
  final int? truncate;

  const DS1Text(
    this.content, {
    super.key,
    this.fontSize,
    this.fontColor,
    this.truncate,
    this.bold = false,
  });

  @override
  State<DS1Text> createState() => _DS1TextState();
}

class _DS1TextState extends State<DS1Text> {
  @override
  Widget build(BuildContext context) {
    var text = widget.content;

    if (widget.truncate != null) {
      text = text.length > widget.truncate!
          ? '${text.substring(0, widget.truncate)}...'
          : text;
    }

    return Text(
      text,
      style: TextStyle(
        fontWeight: widget.bold ? FontWeight.bold : FontWeight.normal,
        color: widget.fontColor ?? Theme.of(context).colorScheme.onSurface,
        fontSize: widget.fontSize ?? 18,
      ),
    );
  }
}
