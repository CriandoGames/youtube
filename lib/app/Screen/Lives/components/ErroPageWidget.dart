import 'package:flutter/material.dart';

class ErroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text("Nenhuma live no nomento", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500,
                  ),),
                ),
                Image.asset("assets/img/waiting.png",
                fit: BoxFit.cover,
                height: 300,)
              ],
            ),
          ),
    );
  }
}