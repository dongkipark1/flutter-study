import 'package:bottom_app/core/chat_card.dart';
import 'package:bottom_app/core/chat_icon_button.dart';
import 'package:bottom_app/core/my_chat.dart';
import 'package:bottom_app/core/other_chat.dart';
import 'package:bottom_app/core/time_line.dart';
import 'package:bottom_app/data/chat.dart';
import 'package:bottom_app/data/user.dart';
import 'package:bottom_app/ui/holder/main_holder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MainHolder(),
    );
  }
}

