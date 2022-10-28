import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'appBar.dart';

class CalendarPage extends StatefulWidget {
  final _mainPageColor;
  CalendarPage(this._mainPageColor);
  State<CalendarPage> createState() => _CalendarPageState();
}

var _currentData = DateTime.now();

class _CalendarPageState extends State<CalendarPage> {
  var _secondColor = Color.fromARGB(255, 87, 87, 87);
  var _selectedDate = [_currentData.month, _currentData.day];
  var _initialDate = DateTime.utc(_currentData.year, 01, 01);
  var _totalDaysInMonth;

  String returnMonth(month) {
    switch (month) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "Jun";
      case 7:
        return "Jul";
      case 8:
        return "Aug";
      case 9:
        return "Sep";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
      default:
        return "";
    }
  }

  Widget _dayContainer(selected, setDate) {
    Color _colorGenerator() {
      if (setDate[0] % 2 == 0) {
        return widget._mainPageColor;
      } else {
        return Color.fromARGB(255, 54, 54, 54);
      }
    }

    Widget _createInternalDayContainer() {
      Widget _setMonth() {
        if (setDate[1] == 1) {
          return Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              " ${returnMonth(setDate[0])}",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          );
        }
        return Text(
          "",
        );
      }

      if (selected) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 87, 96, 230),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              SizedBox(
                child: _setMonth(),
              ),
              Text(
                "${setDate[1]}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      } else {
        return Column(
          children: [
            SizedBox(
              child: _setMonth(),
            ),
            Text(
              "${setDate[1]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        );
      }
    }

    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
          (states) => EdgeInsets.all(0),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _colorGenerator(),
          // checking condigion and alternating the color of the calendar
        ),
        child: _createInternalDayContainer(),
      ),
      onPressed: () {
        setState(() {
          _selectedDate = setDate;
        });
      },
    );
  }

  Widget _skipDayContainer() {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: null,
        // checking condigion and alternating the color of the calendar
      ),
      child: null,
    );
  }

  List<Widget> _createCalendar() {
    int skipdays = _initialDate.weekday;
    int countskipDays = 0;
    List<Widget> _calendar = <Widget>[];
    for (var i = 0; i < skipdays; i++) {
      _calendar.add(
        _skipDayContainer(),
      );
    }
    for (int year = _currentData.year; year < _currentData.year + 1; year++) {
      for (int month = _currentData.month;
          month <= _currentData.month;
          month++) {
        _totalDaysInMonth = DateTime(_currentData.year, month + 1, 0).day;
        for (int day = 1; day < _totalDaysInMonth; day++) {
          if (month == _selectedDate[0] && day == _selectedDate[1]) {
            _calendar.add(
              _dayContainer(
                true,
                [month, day],
              ),
            );
          } else {
            _calendar.add(
              _dayContainer(
                false,
                [month, day],
              ),
            );
          }
        }
        countskipDays++;
      }
    }
    return _calendar;
  }

  double _mainContainerHeight = 267;
  double _gridContainerHeight = 235;
  String _calendarHeightState = "max";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView(
        children: [
          // AnimatedContainer(
          //   duration: Duration(seconds: 1),
          //   height: 267,
          // ),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            width: double.infinity,
            // height: 267,
            height: _mainContainerHeight,
            // decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("S", style: TextStyle(color: Colors.white)),
                    Text("M", style: TextStyle(color: Colors.white)),
                    Text("T", style: TextStyle(color: Colors.white)),
                    Text("W", style: TextStyle(color: Colors.white)),
                    Text("T", style: TextStyle(color: Colors.white)),
                    Text("F", style: TextStyle(color: Colors.white)),
                    Text("S", style: TextStyle(color: Colors.white)),
                  ],
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  width: double.infinity,
                  height: _gridContainerHeight,
                  decoration: BoxDecoration(
                    color: widget._mainPageColor,
                  ),
                  child: GridView.count(
                    addAutomaticKeepAlives: false,
                    crossAxisCount: 7,
                    controller: ScrollController(initialScrollOffset: 35),
                    children: _createCalendar(),
                    shrinkWrap: true,
                    semanticChildCount: 70,
                    clipBehavior: Clip.hardEdge,
                    dragStartBehavior: DragStartBehavior.start,
                  ),
                  // child: GridView.builder(
                  //   addAutomaticKeepAlives: true,
                  //   itemCount: _createCalendar().length,
                  //   controller: ScrollController(initialScrollOffset: 35),
                  //   itemBuilder: (BuildContext context, int index) {
                  //     if (index < _createCalendar().length) {
                  //       return _createCalendar()[index];
                  //     }
                  //     return Text("fds");
                  //   },
                  //   gridDelegate: null,
                  // ),
                ),
                Container(
                  width: double.infinity,
                  height: 16,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border(
                      bottom: BorderSide(color: _secondColor, width: 1.5),
                    ),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_calendarHeightState == "max") {
                          _mainContainerHeight = 95;
                          _gridContainerHeight = 58;
                          _calendarHeightState = "min";
                        } else if (_calendarHeightState == "min") {
                          _mainContainerHeight = 267;
                          _gridContainerHeight = 235;
                          _calendarHeightState = "max";
                        }
                      });
                    },
                    child: Container(
                      width: 45,
                      height: 5,
                      decoration: BoxDecoration(
                        color: _secondColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
