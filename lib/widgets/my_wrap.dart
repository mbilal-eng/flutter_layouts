import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        spacing: 8, // horizontal space
        runSpacing: 4, // vertical space between lines
        children: [
          Chip(label: Text("Flutter")),
          Chip(label: Text("Dart")),
          Chip(label: Text("Widgets")),
          Chip(label: Text("State")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Provider")),
          Chip(label: Text("Bloc")),
          Chip(label: Text("Widgets")),
        ],
      ),
    );
  }
}
