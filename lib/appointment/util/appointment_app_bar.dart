import 'package:flutter/material.dart';

class AppointmentAppBar extends StatelessWidget {
  const AppointmentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: const Color.fromARGB(38, 224, 224, 224),
            shape: const CircleBorder(),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_circle_left,
                color: Colors.white,
              ),
            ),
          ),
          const Expanded(
            child: Text(
              'Make an Appointment',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
