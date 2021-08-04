import 'package:flutter/material.dart';
import 'package:microsoft_teams_ui/Widgets/body.dart';
import 'appBar.dart';
import 'buttomNavigationBar.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _mainPageColor = Color.fromARGB(255, 38, 38, 38);
  int _currentNavBarIndex = 2;
  void _changeCurrneNavIndex(index) {
    setState(() {
      _currentNavBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TeamsAppBar(_currentNavBarIndex).customAppBar(),
        body: AppBody(
          _currentNavBarIndex,
          _mainPageColor,
        ),
        bottomNavigationBar:
            AppBottomNavigationBar(_currentNavBarIndex, _changeCurrneNavIndex),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
