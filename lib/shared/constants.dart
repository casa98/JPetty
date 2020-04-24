import 'package:flutter/material.dart';

const textInputDecor = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white,width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  errorStyle: TextStyle(
    color: Colors.deepPurple,
    fontSize: 12.0
  ),
);