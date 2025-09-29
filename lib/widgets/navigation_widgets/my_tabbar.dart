import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar Example"),
          bottom: TabBar(
            tabs: [Text("All"), Text("Mens"), Text("Women"), Text("Kids")],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("All")),
            Center(child: Text("Men")),
            Center(child: Text("Women")),
            Center(child: Text("Kids")),
          ],
        ),
        // body: DefaultTabController(
        //   length: 3,
        //   child: Column(
        //     children: [
        //       TabBar(tabs: [Text("All"), Text("Mens"), Text("Womens")]),
        //       Flexible(
        //         child: TabBarView(
        //           children: [
        //             Center(child: Text("All")),
        //             Center(child: Text("Men")),
        //             Center(child: Text("Women")),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
