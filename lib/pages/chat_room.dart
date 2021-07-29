import 'package:flutter/material.dart';

import 'package:atone/widgets/chat_chip.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:atone/models/chat.dart';
import 'package:atone/models/user.dart';

class ChatRoomPage extends HookWidget {
  static const routeName = '/chat_room';

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final chatState = useProvider(chatStateProvider);
    final userState = useProvider(userStateProvider);

    // for debug
    useEffect(() {
      Future.microtask(() async {
        final items = <ChatItem>[];
        items.add(ChatItem(
          userId: '',
          text: 'hoge',
          timestamp: DateTime.now(),
        ));
        items.add(ChatItem(
          userId: 'hoge',
          text: 'hogeeee',
          timestamp: DateTime.now(),
        ));
        items.add(ChatItem(
          userId: '',
          text: 'fugafuga',
          timestamp: DateTime.now(),
        ));
        items.add(ChatItem(
          userId: '',
          text: 'piyopiyo',
          timestamp: DateTime.now(),
        ));

        context.read(chatStateProvider.notifier).set(items);
      });
      return;
    }, const []);
    // end debug

    final chatChips = <ChatChipWidget>[];
    for (var i = 0; i < chatState.items.length; i++) {
      var prev = false;

      if (i > 0) {
        prev = chatState.items[i - 1].userId == chatState.items[i].userId;
      }

      chatChips.add(
        ChatChipWidget(
          text: chatState.items[i].text,
          sender: chatState.items[i].userId == userState.id
              ? ChatChipSender.me
              : ChatChipSender.other,
          avatar: prev ? null : CircleAvatar(),
          username: prev ? null : chatState.items[i].userId,
          timestamp: chatState.items[i].timestamp,
        ),
      );
    }

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
        Expanded(
          child: SingleChildScrollView(
            child: new Column(
              children: chatChips,
            ),
          ),
        ),
        TextField(
          controller: _textEditingController,
          maxLines: 8,
          minLines: 1,
          decoration: InputDecoration(
            hintText: 'メッセージを入力',
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // todo: post to server
                context.read(chatStateProvider.notifier).append(
                      ChatItem(
                        userId: '',
                        text: _textEditingController.text,
                        timestamp: DateTime.now(),
                      ),
                    );

                _textEditingController.clear();
              },
            ),
          ),
        ),
      ],
    );
  }
}
