import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/widgets/jersey_widget.dart';

const formTheme = InputDecoration(
  fillColor: Colors.lightBlueAccent,
  filled: true,
  focusColor: Colors.lightBlueAccent,
  focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
);

const textTheme = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    fontFamily: "SourceSansPro");

const List<String> dropDownItems = [
  "PR",
  "HK",
  "SR",
  "FL",
  "8th",
  "SH",
  "FH",
  "CT",
  "WG",
  "FB"
];

Widget loading() {
  return Center(child: CircularProgressIndicator());
}

List<Widget> jerseys = [
  Jersey(
    jerseyName: 'crusader jersey.png',
  ),
  Jersey(
    jerseyName: 'blues jersey.png',
  ),
  Jersey(
    jerseyName: 'chiefs jersey.png',
  ),
  Jersey(
    jerseyName: 'waratahs-jersey.png',
  ),
  Jersey(
    jerseyName: 'hurr jersey.png',
  ),
  Jersey(
    jerseyName: 'blues jersey.png',
  ),
];
