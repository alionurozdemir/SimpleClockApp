import 'package:clockapplication/ui/shared/widgets/custom_button.dart';
import 'package:clockapplication/core/providers/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashRiverpood = ChangeNotifierProvider((ref) => SplashRiverpood());

class SliderPage extends ConsumerWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SplashRiverpood watch = ref.watch(splashRiverpood);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView.builder(
              onPageChanged: (value) {
                watch.current = value;
                watch.current == 3 ? watch.ucuncuSayfa() : null;
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
          Row(
            children: [
              CustomButton(
                  title: "Sonraki",
                  onTap: () {
                    print("Butona Basıldı");
                  }),
            ],
          )
        ],
      ),
    );
  }
}
