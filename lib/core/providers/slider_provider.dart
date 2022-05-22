import 'package:clockapplication/core/models/slider_model.dart';
import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier {
  List<SliderModel> pages = [
    SliderModel(
        title: "Welcome To \n Smart Clock",
        subTitle: "Simple And Fast  \n Clock App",
        imagePath: "assets/images/standing1.png"),
    SliderModel(
        title: "Welcome To \n Smart Clock",
        subTitle: "Simple And Fast \n Clock App ",
        imagePath: "assets/images/standing2.png"),
  ];

  PageController controller = PageController(initialPage: 0);

  int current = 0;

  ucuncuSayfa() {
    print("Şunda Üçüncü Sayfadasınız");
  }
}
