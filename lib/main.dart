import 'package:flutter/material.dart';
import 'package:helper_app/helper_screen.dart';
import 'package:helper_app/menu_screen.dart';
import 'package:helper_app/child_detail_screen.dart';
import 'package:helper_app/child_screen.dart';
import 'package:helper_app/cooker_detail_screen.dart';
import 'package:helper_app/cooker_screen.dart';
import 'package:helper_app/helper_detail_screen.dart';
import 'package:helper_app/nurse_detail_screen.dart';
import 'package:helper_app/nurse_screen.dart';

void main() {
  runApp(const MyApp());
}

Color mainColor = Color.fromRGBO(128, 68, 53, 1);
Color startingColor = Color.fromRGBO(112, 56, 44, 1);

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
