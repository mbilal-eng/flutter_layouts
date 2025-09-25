import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://www.siddhiinfosoft.com/blog/wp-content/uploads/2020/06/Google-Releases-Flutter-1.17-and-Dart-2.8-Here-is-everything-that-you-need-to-know.png",
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Muhammad Bilal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "@Flutter_Developer",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Follow"),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Building Mobile Application using Flutter and Firebase. UI UX Designer. API Integration",
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "238 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "Following"),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "84 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "Followers"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.facebook, color: Colors.blue, size: 50),
                    SizedBox(width: 8),
                    Text("Facebook"),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.flutter_dash, color: Colors.blue, size: 50),
                    SizedBox(width: 8),
                    Text("Flutter"),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.edit, color: Colors.blue, size: 50),
                    SizedBox(width: 8),
                    Text("Edit Profile"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
