// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class IFStext extends StatelessWidget {
  const IFStext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
        child: Column(
          children: [
            Text(
              "IFS",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "LOCATION",
              style: TextStyle(color: Colors.black38, fontSize: 28),
            ),
          ],
        ));
  }
}
