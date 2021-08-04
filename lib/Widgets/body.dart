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
  var _previousNavBarIndex;
  AppBody(this._currentNavBarIndex, this._mainPageColor);
  Widget body() {
    if (this._currentNavBarIndex == 0) {
      _previousNavBarIndex = 0;
      return ActivityPage(_mainPageColor);
    } else if (this._currentNavBarIndex == 1) {
      _previousNavBarIndex = 1;
      return ChatPage(this._mainPageColor);
    } else if (this._currentNavBarIndex == 2) {
      _previousNavBarIndex = 2;
      return TeamsPage(this._mainPageColor);
    } else if (this._currentNavBarIndex == 3) {
      _previousNavBarIndex = 3;
      return AssignmentPage(this._mainPageColor);
    } else if (this._currentNavBarIndex == 4) {
      _previousNavBarIndex = 4;
      return CalendarPage(_mainPageColor);
    } else if (this._currentNavBarIndex == 5) {
      // if (this._previousNavBarIndex == 0) {
      //   _previousNavBarIndex = 0;
      //   return ActivityPage(_mainPageColor);
      // } else if (this._previousNavBarIndex == 1) {
      //   _previousNavBarIndex = 1;
      //   return ChatPage(this._mainPageColor);
      // } else if (this._previousNavBarIndex == 2) {
      //   _previousNavBarIndex = 2;
      //   return TeamsPage(this._mainPageColor);
      // } else if (this._previousNavBarIndex == 3) {
      //   _previousNavBarIndex = 3;
      //   return AssignmentPage(this._mainPageColor);
      // } else if (this._previousNavBarIndex == 4) {
      //   _previousNavBarIndex = 4;
      //   return CalendarPage(_mainPageColor);
      // } else {
      //   return MorePage();
      // }
      return (SnackBar(
        content: Text("Hello"),
        action: SnackBarAction(
          // An action that the user can take based on the snack bar.
          onPressed: () {},
          label: "More Detail",
          textColor: Colors.red,
          disabledTextColor: Colors.white,
          // The button disabled label color. This color is shown after the SnackBarAction is dismissed.
        ),
        animation: null,
        // The animation driving the entrance and exit of the snack bar.
        backgroundColor: Colors.grey,
        // color of the snack bar background
        // behavior: SnackBarBehavior.fixed, // default
        behavior: SnackBarBehavior.floating,
        // This defines the behavior and location of the snack bar
        duration: Duration(seconds: 5),
        // The amount of time the snack bar should be displayed
        elevation: 10,
        // The z-coordinate at which to place the snack bar. This controls the size of the shadow below the snack bar.
        onVisible: () {
          // Called this function at the first time when the snackbar is visible within a Scaffold.
          print("Visible");
        },
        padding: EdgeInsets.all(10),
        // shape: null,
        // The shape of the snack bar's Material.
        width: 300,
        // margin: EdgeInsets.all(40),
      ));
    }
    return Text("null");
  }

  @override
  Widget build(BuildContext context) {
    return body();
  }
}
