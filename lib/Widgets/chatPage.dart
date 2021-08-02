import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final _mainPageColor;
  ChatPage(this._mainPageColor);

  Widget _imageOfChatPageUser(name, imgColor, textColor) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: imgColor,
      ),
      child: Text(
        "$name",
        style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
        ),
      ),
    );
  }

  Widget _userNameAndMessageOfChatPage(userName, recentMessage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "$userName",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("$recentMessage",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
      ],
    );
  }

  Widget _dayOfMessageOfChatPage(day) {
    return Expanded(
      child: Container(
        alignment: Alignment.topRight,
        height: 60,
        padding: EdgeInsets.only(right: 15, top: 5),
        child: Text(
          "$day",
          style: TextStyle(fontSize: 15, color: Colors.white),
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
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.white24),
                bottom: BorderSide(color: Colors.white24),
              )),
              child: Row(
                children: <Widget>[
                  _imageOfChatPageUser(
                    "RB",
                    Color.fromARGB(255, 245, 225, 225),
                    Color.fromARGB(255, 230, 50, 50),
                  ),
                  _userNameAndMessageOfChatPage(
                      "ROUNAK RAJBHANDARI", "hello ke xa kbr"),
                  _dayOfMessageOfChatPage("Saturday"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.white24),
                bottom: BorderSide(color: Colors.white24),
              )),
              child: Row(
                children: <Widget>[
                  _imageOfChatPageUser(
                    "SS",
                    Color.fromARGB(255, 227, 207, 207),
                    Color.fromARGB(255, 156, 0, 0),
                  ),
                  _userNameAndMessageOfChatPage(
                      "SUMAN SAPKOTA", "ani assignment gareu ta"),
                  _dayOfMessageOfChatPage("Friday"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.white24),
                bottom: BorderSide(color: Colors.white24),
              )),
              child: Row(
                children: <Widget>[
                  _imageOfChatPageUser(
                    "RB",
                    Color.fromARGB(255, 240, 218, 235),
                    Color.fromARGB(255, 145, 0, 128),
                  ),
                  _userNameAndMessageOfChatPage(
                      "ROSE RAWAL", "oeee, assignment pathaidauna..."),
                  _dayOfMessageOfChatPage("13/07"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.white24),
                bottom: BorderSide(color: Colors.white24),
              )),
              child: Row(
                children: <Widget>[
                  _imageOfChatPageUser(
                    "RB",
                    Color.fromARGB(255, 235, 252, 241),
                    Color.fromARGB(255, 0, 130, 50),
                  ),
                  _userNameAndMessageOfChatPage(
                      "SAKAR ARIYAL", "ani, exam ko kati preparation xa ta"),
                  _dayOfMessageOfChatPage("06/07"),
                ],
              ),
            ),
          ],
        ));
  }
}
