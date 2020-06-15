import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../PlayList_Controller.dart';

class Itens extends StatelessWidget {
  final String id;
  final int maxResult;
  final String title;
  Itens({@required this.id, this.maxResult, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GetBuilder<ControllerPlayList>(
        init: ControllerPlayList(),
        builder: (_) {
          return ListView.builder(
            itemCount: maxResult,
            itemBuilder: (_, index) {
              return Card(
                  child: Container(
                child: Column(
                  children: <Widget>[
                    Text(ControllerPlayList
                        .to.dataItem.items[index].snippet.title),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.play_circle_outline, color: Colors.black87,),
                              onPressed: (){
                                print(ControllerPlayList.to.dataItem.items[index].snippet.resourceId.videoId);
                                ControllerPlayList.to.playVideo(ControllerPlayList.to.dataItem.items[index].snippet.resourceId.videoId);
                              },
                            )
                          ],
                        )
                  ],
                ),
              ));
            },
          );
        },
      ),
    );
  }
}
