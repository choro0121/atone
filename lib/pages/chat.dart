import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(routeName),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, ChatPage.routeName),
            child: Text('chat'),
          ),
        ],
      ),
    );
  }
}
