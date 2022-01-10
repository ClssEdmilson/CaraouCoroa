import 'package:caracoroa/resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  void exibirResultado(){

    var opc = ["cara", "coroa"];
    var rand = Random().nextInt(2);
    var sel = opc[rand];

    Navigator.push(context, MaterialPageRoute(builder: (context) => resultado(sel)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF61BD86),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "imagens/logo.png",
            ),
            GestureDetector(
              onTap: exibirResultado,
              child: Image.asset(
                "imagens/botao_jogar.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
