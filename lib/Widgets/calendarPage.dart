import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  final _mainPageColor;
  CalendarPage(this._mainPageColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _mainPageColor,
      ),
      child: Text(
        "Calendar Panding...",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
