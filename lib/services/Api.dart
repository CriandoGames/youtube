import 'package:aprenda/model/ModelPlayLIst.dart';
import 'package:aprenda/model/ModelitensPlayList.dart';
import 'package:aprenda/model/Videos.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

const String CHAVE = "AIzaSyBiFPqBgXKdEQk8jebsHy77VVojdYL5Nts";
const String IDCANAL = "UCok1vSaNxZZrxufASLHSqJg";
const URLBASE = "https://www.googleapis.com/youtube/v3/";

class Api extends GetController {
  Dio http = new Dio();

  Future<VideosModel> pesquisar(String pesquisar) async {

    try {
      final response = await http.get("$URLBASE"
          "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20&"
          "order=date"
          "&key=$CHAVE"
          "&channelId=$IDCANAL"
          "&q=$pesquisar");

      print("Api Home "+ response.statusCode.toString());

      if (response.statusCode == 200) {
        return VideosModel.fromJson(response.data);
      } else {}
    } catch (e) {
      return null;
    }
  }

  Future<VideosModel> lives() async {
    
    try {
      final response = await http.get("$URLBASE"
          "search"
          "?part=snippet"
          "&eventType=live"
          "&type=video"
          "&maxResults=2"
          "&channelId=$IDCANAL"
          "&key=$CHAVE");
          

      print("lives " + response.statusCode.toString());

      if (response.statusCode == 200) {
        return VideosModel.fromJson(response.data);
      } else {}
    } catch (e) {
      return null;
    }
  }

  Future<ModelPlayList> playList() async {
    
    try {
      final response = await http.get(
          "$URLBASE"
          "playlists"
          "?part=snippet"
          "&maxResults=50"
          "&channelId=$IDCANAL"
          "&key=$CHAVE");
          

        print("$URLBASE"
          "playlists"
          "?part=snippet"
          "&maxResults=20"
          "&channelId=$IDCANAL"
          "&key=$CHAVE");

      if (response.statusCode == 200) {
        return ModelPlayList.fromJson(response.data);
      } else {}
    } catch (e) {
      return null;
    }
  }

Future<ModelitensPlayList> itemPlayList(String idPlayList) async {
  
  try {
      final response = await http.get(
          "$URLBASE"
          "playlistItems?"
          "part=snippet"
          "&maxResults=30"
          "&playlistId=$idPlayList"
          "&key=$CHAVE");     

   

      print("lives " + response.statusCode.toString());
      
      print("$URLBASE"
          "playlistItems?"
          "part=snippet"
          "&maxResults=30"
          "&playlistId=$idPlayList"
          "&key=$CHAVE");

      if (response.statusCode == 200) {
        return ModelitensPlayList.fromJson(response.data);
      } else {}
    } catch (e) {
      return null;
    }


}


}
