import 'package:clockapplication/model/splash_model.dart';
import 'package:flutter/cupertino.dart';

class SplashRiverpood extends ChangeNotifier {
  List<SplashModel> pages = [
    SplashModel(
        title: "1. Sayfa",
        subTitle: "Simple And FastClock App 2",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "2. Sayfa",
        subTitle: "Simple And FastClock App 2 ",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "3. Sayfa",
        subTitle: "Simple And FastClock App 3",
        imagePath: "assets/images/Standing.png"),
    SplashModel(
        title: "Welcome To Smart Clock 4",
        subTitle: "Simple And FastClock App 4",
        imagePath: "assets/images/Standing.png")
  ];

  PageController controller = PageController(initialPage: 0);

  int current = 0;

  ucuncuSayfa() {
    print("Şunda Üçüncü Sayfadasınız");
  }
}
