import 'package:flutter/material.dart';

import '../../../../Controller_AppMain.dart';

class BottonNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
        currentIndex: ControllerApp.to.indexPage,
        onTap: (index){ 
          ControllerApp.to.indexPage = index;
          print(ControllerApp.to.indexPage);

        },
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Live"), icon: Icon(Icons.live_tv)),
          BottomNavigationBarItem(
              title: Text("Listas"), icon: Icon(Icons.view_list)),
          BottomNavigationBarItem(title: Text("about"), icon: Icon(Icons.help)),
        ]);

  }
}