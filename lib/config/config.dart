import 'package:flutter/material.dart';

class Config {
  final String appName = 'Doha Roots';
  final splashIcon = 'assets/logo.png';
  final String supportEmail = 'mrblab24@gmail.com';
  final String privacyPolicyUrl = 'https://doharoots.com/privacy-policy/';
  final String ourWebsiteUrl = 'https://doharoots.com/terms-of-service/';
  final String iOSAppId = '0000000000';

  final String doneAsset = 'assets/done.json';
  final Color appColor =
      Color(0xFF292b64); //you can change your whole app color

  //Intro images
  final String introImage1 = 'assets/splash1.png';
  final String introImage2 = 'assets/splash2.png';
  final String introImage3 = 'assets/splash3.png';

  //Language Setup

  final List<String> languages = ['English', 'Spanish', 'Arabic'];

  //initial categories - 4 only (Hard Coded : which are added already on your admin panel)

  final List initialCategories = [
    'Entertainment',
    'Sports',
    'Politics',
    'Travel'
  ];

  // Ads Setup

  //-- admob ads -- (you can use this ids for testing purposes)
  final String admobAppId = 'ca-app-pub-3940256099942544~3347511713';

  final String admobInterstitialAdIdAndroid =
      'ca-app-pub-3940256099942544/1033173712';
  final String admobInterstitialAdIdiOS =
      'ca-app-pub-3940256099942544/1033173712';

  final String admobBannerAdIdAndroid =
      'ca-app-pub-3940256099942544/6300978111';
  final String admobBannerAdIdiOS = 'ca-app-pub-3940256099942544/6300978111';

  //fb ads (you can't use this ids)
  final String fbInterstitalAdIDAndroid = '54451484650202************';
  final String fbInterstitalAdIDiOS = '544514846502023_7023************';

  final String fbBannerAdIdAndroid = '544514846502023_7************';
  final String fbBannerAdIdiOS = '544514846502023_7023************';
}
