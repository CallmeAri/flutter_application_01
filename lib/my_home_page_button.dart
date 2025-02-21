import 'package:flutter/material.dart';
import 'package:flutter_application_01/pages/drawer_page.dart';
import 'package:flutter_application_01/pages/homepage_body.dart';

class MyHomePageButton extends StatefulWidget {
  const MyHomePageButton({super.key});

  @override
  State<MyHomePageButton> createState() => _MyHomePageButtonState();
}

class _MyHomePageButtonState extends State<MyHomePageButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          // APPBAR
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black54,
            title: SizedBox(
              width: 100,
              child: Image.asset("assets/images/TQN-personnel-.png"),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.inbox_rounded),
                tooltip: 'INBOX',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          // DRAWER
          drawer: const DrawerPage(),
          //BODY
          body: const SafeArea(child: FirstPage())),
    );
  }
}

