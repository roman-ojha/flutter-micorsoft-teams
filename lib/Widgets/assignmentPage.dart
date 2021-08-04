import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AssignmentPage extends StatelessWidget {
  final _mainPageColor;
  AssignmentPage(this._mainPageColor);
  Widget _assignmentCard(iconColor) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 87, 87, 87),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 150, 150, 150), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: iconColor, borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "BC",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "BSc. CSIT II/I(2076 batch)",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Important Question",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Text(
            "Due today at 23:59",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _mainPageColor,
      ),
      child: ListView(
        children: [
          ExpandablePanel(
            header: Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: _mainPageColor,
              ),
              child: Text(
                "Assigned",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            expanded: Container(
              child: null,
            ),
            collapsed: Container(
              child: Column(
                children: [
                  Text(
                    "To view older assignments, navigate to an individual class team",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  _assignmentCard(Colors.blue),
                  _assignmentCard(Colors.blue),
                ],
              ),
            ),
            theme: ExpandableThemeData(
              iconPlacement: ExpandablePanelIconPlacement.left,
              iconColor: Colors.white,
              iconRotationAngle: -1.5,
            ),
          ),
          ExpandablePanel(
            header: Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: _mainPageColor,
              ),
              child: Text(
                "Completed",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            expanded: Container(
              child: null,
            ),
            collapsed: Container(
              child: Column(
                children: [
                  Text(
                    "To view older assignments, navigate to an individual class team",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  _assignmentCard(Colors.red),
                  _assignmentCard(Colors.red),
                  _assignmentCard(Colors.red),
                ],
              ),
            ),
            theme: ExpandableThemeData(
              iconPlacement: ExpandablePanelIconPlacement.left,
              iconColor: Colors.white,
              iconRotationAngle: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}
