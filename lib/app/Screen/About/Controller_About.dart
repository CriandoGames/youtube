import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class ControllerAbout extends GetController{
  ControllerAbout get to => Get.find();


  void callWebSite(String url) async{
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      Get.snackbar("Erro", "Site Indisponivel");
    }

  }

}