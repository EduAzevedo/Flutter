// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:lista_dinamica/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista dinamica",
      home: ListScreen(),
    );
  }
}
