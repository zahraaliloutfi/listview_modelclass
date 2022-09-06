// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_modelclass/users.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Users(),
    );
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}
