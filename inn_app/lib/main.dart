import 'package:flutter/material.dart';
import 'package:inn_app/components/home/home_body.dart';
import 'package:inn_app/components/home/home_body_banner.dart';
import 'package:inn_app/components/home/home_body_popular.dart';
import 'package:inn_app/components/home/home_body_popular_item.dart';
import 'package:inn_app/components/home/home_header.dart';
import 'package:inn_app/pages/home_page.dart';
import 'package:inn_app/size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

