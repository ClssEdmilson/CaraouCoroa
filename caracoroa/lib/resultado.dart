import 'package:flutter/material.dart';



class resultado extends StatefulWidget {

  String valor;

  resultado(this.valor);

  @override
  _resultadoState createState() => _resultadoState();
}

class _resultadoState extends State<resultado> {

  @override
  Widget build(BuildContext context) {
    var imagem_moeda = AssetImage("imagens/moeda_cara.png");

    if(widget.valor == "cara"){
        imagem_moeda = AssetImage("imagens/moeda_cara.png");
    }
    else{
      imagem_moeda = AssetImage("imagens/moeda_coroa.png");
    }

    return Scaffold(
      backgroundColor: Color(0xFF61BD86),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: imagem_moeda),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset(
                "imagens/botao_voltar.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
