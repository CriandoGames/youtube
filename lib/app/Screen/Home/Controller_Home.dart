import 'package:aprenda/model/Videos.dart';
import 'package:aprenda/services/Api.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:get/get.dart';


class ControllerHome extends GetController{
 static ControllerHome get to => Get.find();
  
   VideosModel data;
  
  void result() async{
    Api api = Api();
    final response = await api.pesquisar(" ");

    if(response == null)
      {
        Get.snackbar("Erro", "não foi possivel conectar ao servidor");
      }else {
      data = response;
      this.update();
    }
    
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