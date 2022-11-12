import 'package:flutter/material.dart';

class AppointmentSectionTitle extends StatelessWidget {
  final String title;
  const AppointmentSectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Title
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // More button
        GestureDetector(
          onTap: () {
            debugPrint('TTT');
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(
              'assets/images/more.png',
              width: 18,
            ),
          ),
        ),
      ],
    );
  }
}
