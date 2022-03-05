import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dados(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int diceNumber1 = 4;
  int diceNumber2 = 3;

  void rolarDados() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;

      caminhoDados = "imagens/dado" + diceNumber1.toString() + ".png";
      caminhoDados2 = "imagens/dado" + diceNumber2.toString() + ".png";
    });
  }

  String caminhoDados = "imagens/dado1.png";
  String caminhoDados2 = "imagens/dado4.png";

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[500],
        title: Text('Rolar Dados'),
      ),
      backgroundColor: Colors.blue,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  rolarDados();
                },
                child: Image.asset(caminhoDados),
              ),
            ),
          ),
          Center(
            child: Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  rolarDados();
                },
                child: Image.asset(caminhoDados2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
