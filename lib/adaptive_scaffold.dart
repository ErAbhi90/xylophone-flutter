import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/ui/xylophone_app.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          child: XylophoneApp(),
          backgroundColor: Colors.white70,
          /*navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.redAccent,
            heroTag: Text(
              "Xylophone App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),*/
        ),
      );
    } else {
      return MaterialApp(
        home: Scaffold(
          body: XylophoneApp(),
          backgroundColor: Colors.white70,
          /*appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Xylophone App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),*/
        ),
      );
    }
  }
}
