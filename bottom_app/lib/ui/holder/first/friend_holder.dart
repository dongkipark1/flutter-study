import 'package:bottom_app/core/profile_card.dart';
import 'package:bottom_app/data/user.dart';
import 'package:flutter/material.dart';

class FriendHolder extends StatelessWidget {
  const FriendHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("친구")),
      body: ListView.separated(
        itemCount: friends.length + 2, // 나, 친구 수, 친구 수 표시를 위한 추가 아이템
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          if (index == 0) {
            // 첫 번째 아이템으로 나의 프로필 카드를 표시
            return ProfileCard(user: me);
          } else if (index == 1) {
            // 두 번째 아이템으로 친구 수를 표시
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const Text("친구"),
                  const SizedBox(width: 6),
                  Text("${friends.length}"),
                ],
              ),
            );
          } else {
            // 그 외의 아이템으로 친구들의 프로필 카드를 표시
            return ProfileCard(user: friends[index - 2]); // 인덱스 조정
          }
        },
      ),
    );
  }
}