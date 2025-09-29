import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("Drawer Example"),
        leading: IconButton(
          onPressed: () {
            _globalKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("This is Drawer Example")],
      ),
      // endDrawer: rightSide,
      // drawer: leftside
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  FlutterLogo(size: 100),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "App Title",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.settings),
                          Icon(Icons.alarm),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.settings), title: Text("Setting")),
            Spacer(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                _globalKey.currentState!.closeDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }
}
