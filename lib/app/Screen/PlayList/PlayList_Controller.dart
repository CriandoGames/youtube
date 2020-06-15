import 'package:aprenda/model/ModelPlayLIst.dart';
import 'package:aprenda/model/ModelitensPlayList.dart';
import 'package:aprenda/services/Api.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:get/get.dart';

import 'components/itens.dart';



class ControllerPlayList extends GetController {
  static ControllerPlayList get to => Get.find();

  ModelPlayList data;
  ModelitensPlayList dataItem;
  Api api = Api();

  void result() async {
    try {
       final response = await api.playList();
      if (response == null) {
        Get.snackbar("Erro", "Erro ao Conectar ao Servidor");
      } else {
        data = response;
      }
    } catch (e) {
      print(e);
      return null;
    }
    this.update();
  }

   void itemList(String id, int titleINDEX) async{
    
    try{
    final response = await api.itemPlayList(id);
    if(response == null)
    {
      Get.snackbar("Erro", "Erro ao Conectar ao Servidor");
    }else
    {
      dataItem = response;
      Get.to(Itens(id: id,maxResult: dataItem.pageInfo.totalResults, title: dataItem.items[titleINDEX].snippet.title));
    }
    }catch(e){
      print(e);
      return null;
    }
    this.update();

  }


    void playVideo(String id)
  {
    print(id);
     FlutterYoutube.playYoutubeVideoById(
       apiKey: CHAVE,
      videoId: id,
      fullScreen: true);
  }

}
