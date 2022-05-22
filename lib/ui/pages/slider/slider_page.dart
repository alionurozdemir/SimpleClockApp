import 'package:clockapplication/ui/pages/home/home_page.dart';
import 'package:clockapplication/ui/shared/widgets/custom_button.dart';
import 'package:clockapplication/core/providers/slider_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sliderProvider = ChangeNotifierProvider((ref) => SliderProvider());

class SliderPage extends ConsumerWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(sliderProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: PageView.builder(
              onPageChanged: (value) {
                watch.current = value;
                watch.current == 3 ? watch.ucuncuSayfa() : null;
              },
              itemCount: ref.watch(sliderProvider).pages.length,
              controller: ref.watch(sliderProvider).controller,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(ref.watch(sliderProvider).pages[index].title,
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: const Color(0xFF313131),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(ref.watch(sliderProvider).pages[index].imagePath),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(ref.watch(sliderProvider).pages[index].subTitle,
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: const Color(0xFF313131),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center),
                  ],
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    "Skip Intro",
                  ),
                ),
                CustomButton(title: "Next", onTap: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
