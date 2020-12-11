import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:raw_toast/raw_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toast Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            RawToast.toast("Toast!");
          },
          child: Icon(Icons.send),
        ),
      ),
    );
  }
}
