// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarefas"),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueAccent,
        ),
        itemCount: tarefas.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: (() {}),
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: IconTheme(
                child: Icon(Icons.access_alarm_sharp),
                data: IconThemeData(color: Colors.white),
              ),
            ),
            title: Text(
              tarefas[index],
              style: TextStyle(color: Colors.black),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTarefa,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTarefa() {
    setState(() {
      var random = Random().nextInt(100);
      tarefas.add("Tarefa $random");
    });
  }
}
