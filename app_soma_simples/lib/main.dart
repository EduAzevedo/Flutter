// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String resultado = "Digite os números e aperte o botão";
  double n1 = 0.0;
  double n2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Número 1",
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      onChanged: (value) => n1 = double.parse(value),
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      maxLines: 1,
      decoration: InputDecoration(
          labelText: "Número 2",
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      onChanged: (value) => n2 = double.parse(value),
    );

    ElevatedButton buttonSoma = ElevatedButton(
      onPressed: (() {
        setState(() {
          double soma = n1 + n2;
          this.resultado = "Resultado: ${soma.toStringAsFixed(0)}";
        });
      }),
      child: Text("SOMAR"),
    );

    ElevatedButton buttonMenos = ElevatedButton(
      onPressed: (() {
        setState(() {
          double soma = n1 - n2;
          this.resultado = "Resultado: ${soma.toStringAsFixed(0)}";
        });
      }),
      child: Text("SUBTRAIR"),
    );

    Text resultado = Text(
      this.resultado,
      style: TextStyle(color: Colors.black, fontSize: 22),
    );

    Padding separador = Padding(padding: EdgeInsets.all(8.0));

    Column columns = Column(
      children: [
        num1,
        separador,
        num2,
        separador,
        SizedBox(
          child: buttonSoma,
          width: double.infinity,
        ),
        separador,
        SizedBox(
          child: buttonMenos,
          width: double.infinity,
        ),
        separador,
        resultado,
      ],
    );

    return MaterialApp(
      title: "Soma",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Operações"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: columns,
        ),
      ),
    );
  }
}
