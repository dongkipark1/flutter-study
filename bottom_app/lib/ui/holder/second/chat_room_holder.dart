import 'package:bottom_app/core/chat_icon_button.dart';
import 'package:bottom_app/core/my_chat.dart';
import 'package:bottom_app/core/other_chat.dart';
import 'package:bottom_app/core/time_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            const Icon(FontAwesomeIcons.search, size: 20),
            const SizedBox(width: 25),
            const Icon(FontAwesomeIcons.bars, size: 20),
            const SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const TimeLine(time: "2024년 4월 17일 수요일"),
                      const OtherChat(
                        name: "홍길동",
                        text: "1조 화이팅 합시다",
                        time: "오후 3:12",
                      ),
                      const MyChat(
                        text: "여어떻노 잘 진행 되고있나",
                        time: "오후 3:13",
                      ),
                      ...List.generate(chats.length, (index) => chats[index]),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                  Expanded(
                    child: Container(
                      child: TextField(
                        controller: _textController,
                        maxLines: 1,
                        style: const TextStyle(fontSize: 20),
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        onSubmitted: _handleSubmitted,
                      ),
                    ),
                  ),
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.smile)),
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.cog)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: text,
          time: DateFormat("a K:m") // 3
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
