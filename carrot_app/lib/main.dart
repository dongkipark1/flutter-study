import 'package:carrot_app/models/chat_message.dart';
import 'package:carrot_app/models/icon_menu.dart';
import 'package:carrot_app/models/neighborhood_life.dart';
import 'package:carrot_app/models/products.dart';
import 'package:carrot_app/models/recommend_store.dart';
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

class ImageContainer extends StatelessWidget {
  final double borderRadius;
  final String imageUrl;
  final double width;
  final double height;

  const ImageContainer({
    Key? key,
    required this.borderRadius,
    required this.imageUrl,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}

class RoundBorderText extends StatelessWidget {
  const RoundBorderText({Key? key, required this.title, required this.position})
      : super(key: key);

  final String title;
  final int position;

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(width: 0.5, color: Colors.grey),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

