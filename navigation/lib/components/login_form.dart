// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navigation/tela_mapa.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Padding separador = Padding(padding: EdgeInsets.all(18));

    return Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(18),
              child: Column(children: [
                Column(children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Desnecessário",
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.green,
                      ),
                      labelStyle:
                          TextStyle(color: Colors.black38, fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                  separador,
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Por enquanto",
                      prefixIcon: Icon(
                        Icons.password_outlined,
                        color: Colors.green,
                      ),
                      labelStyle:
                          TextStyle(color: Colors.black38, fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                  separador,
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: ElevatedButton(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mapa()),
                        );
                      },
                    ),
                  ),
                ]),
              ])),
        ]));
  }
}
