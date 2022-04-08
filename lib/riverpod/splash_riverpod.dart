import 'package:clockapplication/model/splash_model.dart';
import 'package:flutter/cupertino.dart';

class SplashRiverpood extends ChangeNotifier {
  List<SplashModel> pages = [
    SplashModel(
        title: "Welcome To Smart Clock",
        subTitle: "Simple And FastClock App",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "Welcome To Smart Clock",
        subTitle: "Simple And FastClock App",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "Welcome To Smart Clock",
        subTitle: "Simple And FastClock App",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "Welcome To Smart Clock",
        subTitle: "Simple And FastClock App",
        imagePath: "assets/images/Standing.png")
  ];

PageController controller = PageController(initialPage: 0); 

int current = 0;

}
