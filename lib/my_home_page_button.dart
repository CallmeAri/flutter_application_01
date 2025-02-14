import 'package:flutter/material.dart';
import 'package:flutter_application_01/pages/drawer_page.dart';
import 'package:flutter_application_01/pages/homepage_body.dart';

class MyHomePageButton extends StatefulWidget {
  const MyHomePageButton({super.key});

  @override
  State<MyHomePageButton> createState() => _MyHomePageButtonState();
}

class _MyHomePageButtonState extends State<MyHomePageButton> {
  String textDisplay = "USERNAME";
  void updateTextDisplay(String newtext) {
    setState(() {
      textDisplay = newtext;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          // APPBAR
          appBar: AppBar(
            backgroundColor: const Color(0XFFF2F2F2),
            foregroundColor: Colors.black54,
            title: const Text("Demo Application"),
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
          drawer:  DrawerPage(textDisplay: textDisplay),
          //BODY
          body: SafeArea(child: FirstPage(onTextChanged: updateTextDisplay))),
    );
  }
}
