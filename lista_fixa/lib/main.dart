// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(Lista());

class Lista extends StatelessWidget {
  List itens = [
    "task 1",
    "task 2",
    "task 3",
    "task 4",
    "task 5",
    "task 6",
    "task 7",
    "task 8",
    "task 9",
    "task 11",
    "task 12",
    "task 13",
    "task 14",
    "task 15",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista"),
          centerTitle: true,
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.blueAccent,
                height: 6,
              );
            },
            itemCount: itens.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: IconTheme(
                    child: Icon(Icons.access_time_sharp),
                    data: IconThemeData(color: Colors.white),
                  ),
                ),
                onTap: (() {}),
                title: Text(
                  itens[index],
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: Text('Sub ${index + 1}'),
              );
            }),
      ),
    );
  }
}
