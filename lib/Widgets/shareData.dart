import 'package:flutter/material.dart';

class ShareData extends StatefulWidget {
  final returnMonth;
  final month;
  ShareData.fromCalendar(this.returnMonth, this.month);
  State<ShareData> createState() => _ShareDataState();
}

class _ShareDataState extends State<ShareData> {
  @override
  Widget build(BuildContext context) {
    return Text("");
  }
}
