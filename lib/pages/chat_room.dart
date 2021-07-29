import 'package:flutter/material.dart';

import 'package:atone/widgets/chat_chip.dart';

class ChatRoomPage extends StatelessWidget {
  static const routeName = '/chat_room';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text('ルームタイトル', style: TextStyle(color: Colors.black)),
        ),
        ChatChipWidget(
          avatar: CircleAvatar(),
          text: 'hoge',
          sender: ChatChipSender.other,
        ),
        ChatChipWidget(
          text: 'hogeeeeee',
          sender: ChatChipSender.other,
          timestamp: DateTime.now(),
        ),
        ChatChipWidget(
          text: 'fugafuga',
          timestamp: DateTime.now(),
          sender: ChatChipSender.me,
        ),
      ],
    );
  }
}
