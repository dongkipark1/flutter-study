import 'package:final_project/home/my_page/home/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeBody(),
        ],
      ),
    );
  }
}
