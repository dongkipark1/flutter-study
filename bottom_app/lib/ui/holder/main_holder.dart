// 여기 화면에 여러 페이지를 둘 수 있겠군.........

import 'package:bottom_app/data/user.dart';
import 'package:bottom_app/ui/holder/first/friend_holder.dart';
import 'package:bottom_app/ui/holder/second/chat_holder.dart';
import 'package:bottom_app/ui/holder/third/more_holder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  //통신 코드 필요
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          FriendHolder(),
          ChatHolder(), // 여기부터 레이지 로딩 필요, 통신의 효율을 위해 혹은 로딩 페이지를 따로 만들어야 한다.
          MoreHolder(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.grey[100],
        currentIndex: _index,
        // 선택된 아이콘에 색깔을 추가 할 수가 있다.
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '프로필',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: '대화',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: '더보기',
          ),
        ],
      ),
    );
  }
}

