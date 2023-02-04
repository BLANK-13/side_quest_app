import 'package:flutter/material.dart';

class Constants {
  final primaryColor = const Color(0xFF006387);
}

var textInputDecoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    //
    borderSide: BorderSide(color: Constants().primaryColor, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Constants().primaryColor, width: 2),
  ),
  errorBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
  ),
);
