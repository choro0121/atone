import 'package:flutter/material.dart';

enum ChatChipSender { me, other }

class ChatChipWidget extends StatelessWidget {
  ChatChipWidget({
    this.avatar,
    this.username,
    required this.text,
    required this.timestamp,
    required this.sender,
  });

  final CircleAvatar? avatar;
  final String? username;
  final String text;
  final DateTime timestamp;
  final ChatChipSender sender;

  bool get _me => sender == ChatChipSender.me;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: _me ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!_me)
          avatar != null
              ? avatar!
              : SizedBox(
                  width: 40,
                ),
        Column(
          crossAxisAlignment:
              _me ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            if (!_me && username != null) Text(username!),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(text),
              ),
              color: _me ? Colors.blue[200] : null,
            ),
            Text(
              '${timestamp.hour}:${timestamp.minute}',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
