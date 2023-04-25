import 'package:flutter/material.dart';

class DSTimePicker extends StatefulWidget {
  final String? label;
  final Function(TimeOfDay) onChanged;
  final String? Function(String?)? validator;

  const DSTimePicker({
    super.key,
    this.label,
    required this.onChanged,
    this.validator,
  });

  @override
  State<DSTimePicker> createState() => _DSTimePickerState();
}

class _DSTimePickerState extends State<DSTimePicker> {
  final inputController = TextEditingController();
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      readOnly: true,
      validator: widget.validator,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: initialTime,
        ).then((TimeOfDay? value) {
          if (value != null) {
            final String hour = value.hour.toString().padLeft(2, '0');
            final String minute = value.minute.toString().padLeft(2, '0');
            final String time = '$hour:$minute';

            setState(() {
              initialTime = value;
            });

            inputController.text = time;

            widget.onChanged(value);
          }
        });
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.access_time),
        contentPadding: const EdgeInsets.all(15),
        labelText: widget.label,
      ),
      keyboardType: TextInputType.datetime,
    );
  }
}
