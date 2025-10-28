import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Android Home"),
        ),
        body: const Center(
          child: Text(
            "Hello Android User",
            style: TextStyle(fontSize: 22, color: Colors.green),
          ),
        ),
      );
    } else if (Platform.isIOS) {
      return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("iOS Home"),
        ),
        child: const Center(
          child: Text(
            "Hello iOS User",
            style: TextStyle(
              fontSize: 22,
              color: CupertinoColors.activeBlue,
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text("Other Platform")),
        body: const Center(
          child: Text("Unknown Platform"),
        ),
      );
    }
  }
}
