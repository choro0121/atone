import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:atone/pages/edit_profile.dart';
import 'package:atone/widgets/game_card.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  ProfilePage({this.userId});

  final String? userId;
  bool get _me => userId == null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [Color(0xfffab1a0), Color(0xffa29bfe)],
              stops: const [0.0, 1.0],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'hoge',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 3),
                            Text(
                              'hogehoge',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(width: 10),
                            FaIcon(
                              FontAwesomeIcons.discord,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 3),
                            Text(
                              'hogeee',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(width: 10),
                            FaIcon(
                              FontAwesomeIcons.playstation,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 3),
                            Text(
                              'hoge',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'bio',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Follows',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Followers',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        EditProfilePage.routeName,
                      ),
                      child: Text('Edit Profile'),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 200),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'プレイしているゲーム',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
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
            ),
          ),
        ),
      ],
    );
  }
}
