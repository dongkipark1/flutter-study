import 'package:final_project/home/my_page/home/home_bottom_navigationbar.dart';
import 'package:final_project/size.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    return Container(
      child: Expanded(
        child: Column(
          children: [
            HomeBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}