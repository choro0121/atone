import 'package:flutter/material.dart';

class ConditionPage extends StatelessWidget {
  static const routeName = '/condition';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: false,
          title: Text('条件を変更'),
        ),
      ],
    );
  }
}
