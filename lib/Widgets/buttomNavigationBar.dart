import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final currentNavBarIndex;
  final changeCurrneNavIndex;
  AppBottomNavigationBar(this.currentNavBarIndex, this.changeCurrneNavIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentNavBarIndex,
      onTap: changeCurrneNavIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 23, 23, 23),
      // elevation: 10,
      // enableFeedback: true,
      iconSize: 30,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      selectedIconTheme: IconThemeData(size: 32),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Activity",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_rounded),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: "Teams",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: "Assignment",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "Calendar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: "More",
        ),
      ],
    );
  }
}
