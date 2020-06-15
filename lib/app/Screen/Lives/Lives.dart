import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller_Lives.dart';
import 'components/ErroPageWidget.dart';

class Lives extends StatelessWidget {
  @override
  Widget build(BuildContext context) {      
    return GetBuilder<ControllerLives>(
      init: ControllerLives(),
      initState: (_){
        ControllerLives.to.result();
      },
      builder: (_){
        return ListView.builder(
          itemCount: 1,
          itemBuilder: (_,index)
          {
            return  ControllerLives.to.data == null ? Center(child: CircularProgressIndicator()):
            Card(
              child: ControllerLives.to.data.pageInfo.totalResults == 0 ? ErroPage() : Row(
                children: <Widget>[
                  Image.network(ControllerLives.to.data.items[index].snippet.thumbnails.high.url,width: 200,),
                 Container(
                   width: 200,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(bottom: 10),
                         child: Text(ControllerLives.to.data.items[index].snippet.title),
                       ),
                       RaisedButton(child: Text("Assistir"),
                       color: Colors.blue, onPressed: (){
                         ControllerLives.to.playVideo(ControllerLives.to.data.items[index].id.videoId.toString());
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
