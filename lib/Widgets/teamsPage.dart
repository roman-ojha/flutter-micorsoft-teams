import 'package:flutter/material.dart';
import "package:expandable/expandable.dart";

class TeamsPage extends StatelessWidget {
  final _mainPageColor;
  TeamsPage(this._mainPageColor);
  Widget _collapsedSubjectWidget(subject) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.only(left: 80),
      decoration: BoxDecoration(
        color: _mainPageColor,
      ),
      child: Text(
        "$subject",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _logoOfHeaderOfExpandableWidget(name, logoColor) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: logoColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "$name",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _titleOfHeaderOfExpandableWidget(title) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: _mainPageColor,
      ),
      child: Text(
        "BSc. CSIT II/I",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _moreOptionOfHeaderOfExpandableWidget() {
    return Expanded(
      child: Container(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          onPressed: null,
          child: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: _mainPageColor,
      ),
      child: ListView(
        children: [
          ExpandablePanel(
            header: Row(
              children: [
                _logoOfHeaderOfExpandableWidget(
                    "DS", Color.fromARGB(255, 136, 3, 252)),
                _titleOfHeaderOfExpandableWidget("Discrete Structure"),
                _moreOptionOfHeaderOfExpandableWidget(),
              ],
            ),
            collapsed: _collapsedSubjectWidget("General"),
            expanded: Container(
              color: Colors.blue,
              child: null,
            ),
            // controller: ExpandableController(initialExpanded: true),
            theme: ExpandableThemeData(
              iconPlacement: ExpandablePanelIconPlacement.left,
              iconColor: Colors.white,
              iconSize: 20,
              iconPadding: EdgeInsets.only(top: 25),
              iconRotationAngle: -1.5,
            ),
          ),
          ExpandablePanel(
            header: Row(
              children: [
                _logoOfHeaderOfExpandableWidget(
                    "BC", Color.fromARGB(255, 247, 12, 12)),
                _titleOfHeaderOfExpandableWidget("BSc. CSIT II/I"),
                _moreOptionOfHeaderOfExpandableWidget(),
              ],
            ),
            collapsed: Column(children: <Widget>[
              _collapsedSubjectWidget("General"),
              _collapsedSubjectWidget("C Programming"),
              _collapsedSubjectWidget("Digital Logic"),
              _collapsedSubjectWidget("Discrete Structure"),
              _collapsedSubjectWidget("MathamaticsII"),
              _collapsedSubjectWidget("Numerical Methods"),
              _collapsedSubjectWidget("Object Orented Programming"),
              _collapsedSubjectWidget("Physic"),
              _collapsedSubjectWidget("Statistic I"),
            ]),
            expanded: Container(
              color: Colors.blue,
              child: null,
            ),
            // controller: ExpandableController(initialExpanded: true),
            theme: ExpandableThemeData(
              iconPlacement: ExpandablePanelIconPlacement.left,
              iconColor: Colors.white,
              iconSize: 20,
              iconPadding: EdgeInsets.only(top: 25),
              iconRotationAngle: -1.5,
            ),
          ),
          ExpandablePanel(
            header: Row(
              children: [
                _logoOfHeaderOfExpandableWidget("BC", Colors.blue),
                _titleOfHeaderOfExpandableWidget("BSc. CSIT II/I(2076 batch)"),
                _moreOptionOfHeaderOfExpandableWidget(),
              ],
            ),
            collapsed: Column(
              children: [
                _collapsedSubjectWidget("General"),
                _collapsedSubjectWidget("Computer Architecure"),
                _collapsedSubjectWidget("Computer Graphics"),
                _collapsedSubjectWidget("Data Structure and Algorighm"),
                _collapsedSubjectWidget("StatisticII"),
              ],
            ),
            expanded: Container(
              color: Colors.blue,
              child: null,
            ),
            // controller: ExpandableController(initialExpanded: true),
            theme: ExpandableThemeData(
              iconPlacement: ExpandablePanelIconPlacement.left,
              iconColor: Colors.white,
              iconSize: 20,
              iconPadding: EdgeInsets.only(top: 25),
              iconRotationAngle: -1.5,
            ),
            // controller: ExpandableController(initialExpanded: false),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "See all Teams",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
