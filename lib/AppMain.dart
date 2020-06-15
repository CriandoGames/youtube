import 'app/Screen/Home/components/BottonNavigation_widget.dart';
import 'Controller_AppMain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'commum/Data_search.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Image.asset(
            'assets/img/logo.png',
            width: 200,
          ),
          centerTitle: true,
          actions: <Widget>[
            GetBuilder(
              init: ControllerApp(),
              builder: (_) {
                return ControllerApp.to.indexPage == 0
                    ? IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () async {
                        String res = await  showSearch(
                              context: context, delegate: DataSearch());
                              print("Resultado da Pesquisa " +res);
                        })
                    : IconButton(
                        icon: Icon(Icons.lock_outline),
                        onPressed: () {
                          Get.snackbar("Atenção",
                              "Volte para a primeira Pagina para pesquisar");
                        });
              },
            ),
            IconButton(
                icon: Icon(Icons.info_outline),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://www.sunsetweb.com.br/painel/uploads/images/2019/1%20-%20Janeiro/Web%20Dev%20Google%20Sunset%20Web%20conhe%C3%A7a.jpg",
                                    height: 250,
                                  )),
                              Text("Desenvolvidor por : Carlos Castro"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                    "https://img1.gratispng.com/20180320/aqe/kisspng-linkedin-logo-computer-icons-business-symbol-linkedin-icon-5ab1765616c913.9690645915215796060933.jpg",
                                    height: 25,
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Text("Entre em contato"))
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                })
          ],
        ),
        body: GetBuilder(
          init: ControllerApp(),
          builder: (_) {
            return ControllerApp.to.screan[ControllerApp.to.indexPage];
          },
        ),
        bottomNavigationBar: GetBuilder(
          init: ControllerApp(),
          builder: (_) {
            return BottonNavigationWidget();
          },
        ));
  }
}
