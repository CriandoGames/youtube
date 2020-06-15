import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PlayList_Controller.dart';

class PlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerPlayList>(
      init: ControllerPlayList(),
      initState: (_) {
        ControllerPlayList.to.result();
      },
      builder: (_) {
        return ListView.builder(
            itemCount: 20,
            itemBuilder: (_, index) {
              return ControllerPlayList.to.data == null
                  ? Center(child: CircularProgressIndicator())
                  : Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 200,
                              child: Image.network(
                                ControllerPlayList.to.data.items[index].snippet
                                    .thumbnails.high.url,
                                fit: BoxFit.cover,
                              )),
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Text(ControllerPlayList
                                      .to.data.items[index].snippet.title
                                      .toString(),
                                      textAlign: TextAlign.center,),
                                ),
                                RaisedButton(
                                  child: Text("Selecionar lista"),
                                  color: Colors.blue,
                                  onPressed: () async {
                                   
                                  ControllerPlayList.to.itemList(ControllerPlayList.to.data.items[index].id,index);                                   
                                  }) 
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
            });
      },
    );
  }
}
