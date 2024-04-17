import 'package:bottom_app/core/bottom_icon_button.dart';
import 'package:bottom_app/core/round_icon_button.dart';
import 'package:bottom_app/data/user.dart';
import 'package:bottom_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileHolder extends StatelessWidget {
  const ProfileHolder({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(user.backgroundImage),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              user.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              maxLines: 1,
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white),
            if (user.name == me.name) _buildMyIcons() else _buildFriendIcons(),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              FontAwesomeIcons.xmark,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            const RoundIconButton(icon: FontAwesomeIcons.gift),
            const SizedBox(width: 15),
            const RoundIconButton(icon: FontAwesomeIcons.cog),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            icon: FontAwesomeIcons.pen,
            text: "프로필 편집",
          ),
        ],
      ),
    );
  }

  Widget _buildFriendIcons() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            icon: FontAwesomeIcons.comment,
            text: "1:1채팅",
          ),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(
            icon: FontAwesomeIcons.phone,
            text: "통화하기",
          ),
        ],
      ),
    );
  }
}
