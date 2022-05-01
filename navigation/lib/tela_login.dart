// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:navigation/components/ifs_logo_text.dart';
import 'package:navigation/components/login_form.dart';
import 'package:navigation/components/ifs_logo.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [IFStext(), LoginForm(), IFSlogo()],
    ));
  }
}
