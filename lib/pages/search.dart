import 'package:flutter/material.dart';

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
                Navigator.pushNamed(context, NewRoomPage.routeName),
            child: Text('new'),
          ),
        ],
      ),
    );
  }
}
