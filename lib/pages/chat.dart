import 'package:flutter/material.dart';

import 'package:atone/pages/chat_room.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(routeName),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, ChatRoomPage.routeName),
            child: Text('chat_room'),
          ),
        ],
      ),
    );
  }
}
