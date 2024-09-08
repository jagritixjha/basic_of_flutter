import 'dart:developer';

import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime date = DateTime.now();
  TimeOfDay? time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('DatePicker'),
            onPressed: () async {
              final DateTime? pickedDate = await showDialog<DateTime>(
                context: context,
                builder: (context) => DatePickerDialog(
                  initialDate: date,
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2025),
                  currentDate: DateTime.now(),
                  initialCalendarMode: DatePickerMode.day,
                ),
              );

              if (pickedDate != null && pickedDate != date) {
                setState(() {
                  date = pickedDate;
                });
              }
            },
          ),
          Text('${date.day}'),
          ElevatedButton(
            onPressed: () async {
              time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              setState(() {});
            },
            child: Text('TimePicker'),
          ),
          Text('${time!.hour}:${time!.minute}'),
        ],
      ),
    );
  }
}
