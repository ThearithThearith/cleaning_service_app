// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final String iconText;
  final IconData icon;
  final EdgeInsetsGeometry? padding;
  final bool active;

  const BottomIcon({
    Key? key,
    required this.iconText,
    required this.icon,
    this.padding,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 28,
            color: active ? const Color(0XFF202f4a) : Colors.grey,
          ),
          const SizedBox(height: 3),
          Text(
            iconText,
            style: TextStyle(
              fontSize: 11,
              color: active ? const Color(0XFF202f4a) : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
