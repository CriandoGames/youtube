import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/Screen/About/about.dart';
import 'app/Screen/Home/AppHome.dart';
import 'app/Screen/Lives/Lives.dart';
import 'app/Screen/PlayList/PlayList.dart';

class ControllerApp extends GetController{
  static ControllerApp get to => Get.find();
 int _indexPage=0;
 
 set indexPage(int value){
    _indexPage = value;
    this.update();
 }

 get indexPage => _indexPage;

  List<Widget> screan = [
    AppHome(),
    Lives(),
    PlayList(),
    About(),
  ];



}