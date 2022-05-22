import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
          tabs: [
            Tab(
              text: "Alarm",
            ),
            Tab(
              text: "Global Clock",
            ),
            Tab(
              text: "Stop Watch",
            ),
            Tab(
              text: "Timer",
            ),
          ],
        )),
        body: TabBarView(
            children: [Text("Alarm"), Text("Global Clock"), Text("Stop Watch"), Text("Timer")]),
      ),
    );
  }
}
