import 'package:cleaning_service/home/util/bottom_icon.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      elevation: 10,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomIcon(
              icon: Icons.home,
              iconText: "Home",
              active: true,
            ),
            BottomIcon(
              padding: EdgeInsets.only(right: 35),
              icon: Icons.calendar_month_outlined,
              iconText: "Schedule",
            ),
            BottomIcon(
              padding: EdgeInsets.only(left: 35),
              icon: Icons.message_outlined,
              iconText: "Message",
            ),
            BottomIcon(
              icon: Icons.settings,
              iconText: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
