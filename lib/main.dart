

import 'package:flutter/material.dart';
import 'package:payment_app/ReceiveMon.dart';

import 'package:payment_app/home_tab.dart';
import 'package:payment_app/login.dart';
import 'package:payment_app/notification.dart';
import 'package:payment_app/openscr.dart';
import 'package:payment_app/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Openscr(),
      //   '/login': (context) => Login(),
      //   '/login/home': (context) => Home(),
      //   '/login/home/proifle': (context) => Profile(),
      //   '/login/home/notification': (context) => Notifications(),
      //   '/login/home/receivemoney': (context) =>ReceiveMoney(),
      // },
      debugShowCheckedModeBanner: false,
      home: Openscr(),
    );
  }
}
