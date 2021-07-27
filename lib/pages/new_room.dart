import 'package:flutter/material.dart';

class NewRoomPage extends StatelessWidget {
  static const routeName = '/new_room';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(routeName),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('back'),
          ),
        ],
      ),
    );
  }
}
