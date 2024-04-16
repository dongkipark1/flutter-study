import 'package:flutter/material.dart';
import 'package:inn_app/components/home/home_header_appbar.dart';
import 'package:inn_app/components/home/home_header_form.dart';
import 'package:inn_app/size.dart';

class HomeHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
