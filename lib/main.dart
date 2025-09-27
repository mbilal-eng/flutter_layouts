import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/profile_screen.dart';
import 'package:flutter_layouts/widgets/my_container.dart';
import 'package:flutter_layouts/widgets/my_forms.dart';
import 'package:flutter_layouts/widgets/my_image.dart';
import 'package:flutter_layouts/widgets/my_richtext.dart';
import 'package:flutter_layouts/widgets/my_text.dart';
import 'package:flutter_layouts/widgets/my_wrap.dart';
import 'package:flutter_layouts/widgets/navigation_widgets/mydrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Explore Layouts Widgets in Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: MyDrawer(),
    );
  }
}
