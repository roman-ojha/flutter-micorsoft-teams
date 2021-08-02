import 'package:flutter/material.dart';
import 'teamsPage.dart';
import 'acitvityPage.dart';
import 'chatPage.dart';
import 'assignmentPage.dart';
import 'calendarPage.dart';
import 'MorePage.dart';

class AppBody extends StatelessWidget {
  final _mainPageColor;
  final _currentNavBarIndex;
  AppBody(this._currentNavBarIndex, this._mainPageColor);
  Widget body() {
    if (this._currentNavBarIndex == 0) {
      return ActivityPage(_mainPageColor);
    } else if (this._currentNavBarIndex == 1) {
      return ChatPage(this._mainPageColor);
    } else if (this._currentNavBarIndex == 2) {
      return TeamsPage(this._mainPageColor);
    } else if (this._currentNavBarIndex == 3) {
      return AssignmentPage();
    } else if (this._currentNavBarIndex == 4) {
      return CalendarPage();
    } else if (this._currentNavBarIndex == 5) {
      return MorePage();
    }
    return Text("null");
  }

  @override
  Widget build(BuildContext context) {
    return body();
  }
}
