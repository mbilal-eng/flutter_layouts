import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          // border: BoxBorder.all(
          //   color: Colors.black,
          //   style: BorderStyle.solid,
          //   width: 5,
          // ),
        ),
        child: Text("Container"),
      ),
    );
  }
}
