import 'package:flutter/material.dart';
import 'package:navigation/tela_login.dart';

void main() => runApp(MaterialApp(
      title: "Navegação",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TelaLogin(),
    ));
