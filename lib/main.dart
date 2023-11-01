import 'package:flutter/material.dart';
import 'package:helper_app/add_record_page.dart';
import 'package:helper_app/helper_screen.dart';
import 'package:helper_app/login_page.dart';
import 'package:helper_app/menu_screen.dart';
import 'package:helper_app/child_detail_screen.dart';
import 'package:helper_app/child_screen.dart';
import 'package:helper_app/cooker_detail_screen.dart';
import 'package:helper_app/cooker_screen.dart';
import 'package:helper_app/helper_detail_screen.dart';
import 'package:helper_app/nurse_detail_screen.dart';
import 'package:helper_app/nurse_screen.dart';
import 'package:helper_app/profile_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

Color mainColor = Color.fromRGBO(148, 123, 90, 1);
Color startingColor = Color.fromRGBO(148, 123, 90, 1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HelperScreen(),
    );
  }
}
