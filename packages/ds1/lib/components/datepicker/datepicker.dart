import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DS1DatePicker extends StatefulWidget {
  final String? label;
  final Function(DateTime) onChanged;
  final String? Function(String?)? validator;

  const DS1DatePicker({
    super.key,
    this.label,
    required this.onChanged,
    this.validator,
  });

  @override
  State<DS1DatePicker> createState() => _DS1DatePickerState();
}

class _DS1DatePickerState extends State<DS1DatePicker> {
  final inputController = TextEditingController();
  DateTime firstDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      readOnly: true,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: firstDate,
          firstDate: DateTime(1900),
          lastDate: DateTime(2050),
        ).then(
          (DateTime? date) {
            if (date != null) {
              var formatedData = DateFormat.MMMMEEEEd().format(date);

              setState(() {
                firstDate = date;
              });

              widget.onChanged(date);
              inputController.text = formatedData;
            }
          },
        );
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.calendar_month),
        labelText: widget.label,
      ),
      keyboardType: TextInputType.datetime,
      validator: widget.validator,
    );
  }
}
