import 'package:flutter/material.dart';

class TeamsAppBar {
  var _currentNavIndex;
  TeamsAppBar(this._currentNavIndex);

  List<String> _getTitleName() {
    var _tilteName = [
      "Feed",
      "Chat",
      "Teams",
      "Assignment",
      "Calendar",
      "More"
    ];
    return _tilteName;
  }

  customAppBar() {
    return AppBar(
      toolbarHeight: 110,
      leading: Container(
        margin: EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "RO",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      title: Text(
        "${_getTitleName()[_currentNavIndex]}",
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[
        Icon(Icons.more_vert),
      ],
      backgroundColor: Color.fromARGB(255, 38, 38, 38),
      brightness: Brightness.dark,
      bottom: PreferredSize(
        preferredSize: Size(10, 10),
        child: Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 38, 38, 38),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 46, 46, 46),
                ),
              ),
              filled: true,
              fillColor: Colors.black,
            ),
            cursorColor: Colors.blue,
            cursorHeight: 25,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
