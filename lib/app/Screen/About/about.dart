import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller_About.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 6,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Patrick"),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://aprendaunity.com.br/imagens/bgs-2016.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                Text(
                  "Olá, muito prazer eu sou o Patrick, tenho 40 anos e sou programador Autodidata desde os meus 17 anos.....",
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GetBuilder<ControllerAbout>(
                      init: ControllerAbout(),
                      builder: (_) {
                        return FlatButton(
                            child: Text("Saiba mais"),
                            onPressed: () {
                              _.to.callWebSite("https://aprendaunity.com.br/");
                            });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3,
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Recados:"),
                  ),
                  Text("Nenhum recado no nomento"),
                  Image.asset(
                    "assets/img/waiting.png",
                    fit: BoxFit.cover,
                    height: 200,
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GetBuilder(
              init: ControllerAbout(),
              builder: (_) {
                return Flexible(
                  child: RaisedButton(
                      child: Text(
                        "Instagram",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.orange[900],
                      onPressed: () {
                        Get.snackbar("Atenção", "Função em Desenvolvimento",
                            backgroundColor: Colors.blueGrey,
                            colorText: Colors.white);
                      }),
                );
              },
            ),
            GetBuilder(
              init: ControllerAbout(),
              builder: (_) {
                return Flexible(
                  child: FlatButton(
                      child:
                          Text("Twitch", style: TextStyle(color: Colors.white)),
                      color: Colors.purple[900],
                      onPressed: () {
                        ControllerAbout().callWebSite("http://pwmuniz.live");
                      }),
                );
              },
            ),
            GetBuilder(
              init: ControllerAbout(),
              builder: (_) {
                return Flexible(
                  child: RaisedButton(
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue[900],
                      onPressed: () {
                        ControllerAbout().callWebSite("https://www.facebook.com/aprendaunity3d/");
                      }),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
