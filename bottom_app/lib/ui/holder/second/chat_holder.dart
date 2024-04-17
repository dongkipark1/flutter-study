import 'package:bottom_app/core/chat_card.dart';
import 'package:bottom_app/core/profile_card.dart';
import 'package:bottom_app/data/chat.dart';
import 'package:bottom_app/data/user.dart';
import 'package:flutter/material.dart';

class ChatHolder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("채팅")),
      body: ListView.separated(
        itemCount: chats.length, // 나, 친구 수, 친구 수 표시를 위한 추가 아이템
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ChatCard(chat: chats[index]);
        },
      ),
    );
  }
}
