import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class AppointmentDate extends StatefulWidget {
  const AppointmentDate({Key? key}) : super(key: key);

  @override
  State<AppointmentDate> createState() => _AppointmentDateState();
}

class _AppointmentDateState extends State<AppointmentDate> {
  late DateTime _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      initialSelectedDate: DateTime.now(),
      selectionColor: const Color(0XFF1461bf),
      selectedTextColor: Colors.white,
      onDateChange: (date) => setState(() => _selectedValue = date),
      height: 82,
      daysCount: 90,
    );
  }
}
