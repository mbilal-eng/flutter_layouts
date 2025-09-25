import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: TextSpan(
          text: "Already have an account? ",
          style: TextStyle(color: Colors.black, fontSize: 18),
          children: [
            TextSpan(
              text: "Signin",
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("Signin");
                },
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline, // optional underline
              ),
            ),
          ],
        ),
      ),
      // body: RichText(
      //   text: TextSpan(
      //     text: "Hello ",
      //     style: TextStyle(fontSize: 22, color: Colors.black),
      //     children: [
      //       TextSpan(
      //         text: "Flutter ",
      //         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      //       ),
      //       TextSpan(
      //         text: "Developers!",
      //         style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
