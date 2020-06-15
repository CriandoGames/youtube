import 'Controller_Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerHome>(
      init: ControllerHome(),
      initState: (_){
        ControllerHome.to.result();
      },
      builder: (_){
        return ListView.builder(
          itemCount: 20,
          itemBuilder: (_,index)
          {
            return ControllerHome.to.data == null ? Center(child: CircularProgressIndicator()) :
            Card(
              child: Row(
                children: <Widget>[
                  Image.network(ControllerHome.to.data.items[index].snippet.thumbnails.high.url,width: 200,),
                 Container(
                   width: 200,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(bottom: 10),
                         child: Text(ControllerHome.to.data.items[index].snippet.title),
                       ),
                       RaisedButton(child: Text("Assistir"),
                       color: Colors.blue, onPressed: (){
                         ControllerHome.to.playVideo(ControllerHome.to.data.items[index].id.videoId.toString());
                       },),
                     ],
                   ),
                 ),
                ],
              ),
            );
          },
        );
      },

    );

  }
}