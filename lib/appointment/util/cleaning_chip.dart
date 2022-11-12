// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CleaningChip extends StatelessWidget {
  final String title;
  const CleaningChip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 30,
        minWidth: 100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey.shade100),
        gradient: const LinearGradient(
          colors: [
            Color(0XFFf0f6fb),
            Color(0XFFf4f8fb),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 20, 76, 145),
          fontSize: 13,
        ),
      ),
    );
  }
}
