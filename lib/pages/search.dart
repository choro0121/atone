import 'package:flutter/material.dart';

import 'package:atone/pages/condition.dart';
import 'package:atone/pages/new_room.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(routeName),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, ConditionPage.routeName),
            child: Text('条件を変更'),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, NewRoomPage.routeName),
            child: Text('ルームを作成'),
          ),
        ],
      ),
    );
  }
}
