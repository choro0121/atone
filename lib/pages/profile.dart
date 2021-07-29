import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:atone/widgets/game_card.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  ProfilePage({this.userId});

  final String? userId;
  bool get _me => userId == null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                ),
                Text(
                  'hoge',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('フォロー'),
                    SizedBox(width: 10),
                    Text('フォロワー'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.twitter),
                    FaIcon(FontAwesomeIcons.discord),
                  ],
                ),
                Text('自己紹介文'),
              ],
            ),
          ),
        ),
        Text('プレイしているゲーム'),
        Wrap(
          children: [
            GameCardWidget(
              title: 'Apex Legends',
              asset: 'images/ApexLegends.jpg',
            ),
            GameCardWidget(
              title: 'Valorant',
              asset: 'images/Valorant.jpg',
            ),
            GameCardWidget(
              title: 'PUBG',
              asset: 'images/PUBG.jpg',
            ),
          ],
        )
      ],
    );
  }
}
