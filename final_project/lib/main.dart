import 'package:final_project/home/my_page/home/home_bottom_navigationbar.dart';
import 'package:final_project/pages/home_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '여기어때',
      home: HomePage(),
    );
  }
}

