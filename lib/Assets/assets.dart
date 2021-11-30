import 'package:flutter/material.dart';

class MyAssets {
  //Colors

  static const playerGrnColor = Color(0xFF009E91);

  //Assets
  static const String landingPageBG = 'assets/images/background.png';
  static const String cloth = 'assets/images/cloth.png';
  static const String childrenillustation1 = 'assets/images/child.png';
  static const String childrenillustation2 =
      'assets/images/childrenillustration2.png';
  static const String zip = 'assets/images/zip.png';
  static const String zipBlack = 'assets/images/zipblack.png';
  static const String SGLogo = 'assets/images/lottie/logo.json';
  static const String pl1 = 'assets/images/profile_pics/pl1.png';
  static const String pl2 = 'assets/images/profile_pics/pl2.png';
  static const String pl3 = 'assets/images/profile_pics/pl3.png';
  static const String pl4 = 'assets/images/profile_pics/pl4.png';
  static const String pl5 = 'assets/images/profile_pics/pl5.png';
  static const String pl6 = 'assets/images/profile_pics/pl6.png';
  //Decorations
  static const redButtonDecoration = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
    ),
  );
  static const greenLoginBtnDecoration = BoxDecoration(
    color: MyAssets.playerGrnColor,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
    ),
  );

  //Sawo Keys

  static const String sawoAPIkey = 'b872cf79-7bd5-4de0-80f1-e4d01a0dcb2d';
  static const String sawoSecretkey =
      '61a541530acb541f485bd772mb58yqJ1hQcFOeKGzFm501TJ';
}
