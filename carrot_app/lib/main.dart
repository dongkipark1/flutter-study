import 'package:carrot_app/models/icon_menu.dart';
import 'package:carrot_app/models/products.dart';
import 'package:carrot_app/screens/main_screens.dart';
import 'package:carrot_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_app',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(), // appbar에 스타일이 적용된 이유
    );
  }
}

