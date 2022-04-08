import 'package:clockapplication/components/custom_button.dart';
import 'package:clockapplication/riverpod/splash_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashRiverpood = ChangeNotifierProvider((ref) => SplashRiverpood());

class Splash extends ConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView.builder(
              onPageChanged: (value){

                
              },
              itemCount: ref.watch(splashRiverpood).pages.length,
              controller: ref.watch(splashRiverpood).controller,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(ref.watch(splashRiverpood).pages[index].title),
                    Image.asset(ref.watch(splashRiverpood).pages[index].imagePath),
                    Text(ref.watch(splashRiverpood).pages[index].subTitle)
                  ],
                );
              },
            ),
          ),
          CustomButton(
              title: "Next",
              onTap: () {
                print("Butona Basıldı");
              })
        ],
      ),
    );
  }
}
