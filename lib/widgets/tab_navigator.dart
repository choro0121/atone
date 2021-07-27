import 'dart:html';

import 'package:flutter/material.dart';

import 'package:atone/pages/chat.dart';
import 'package:atone/pages/condition.dart';
import 'package:atone/pages/new_room.dart';
import 'package:atone/pages/profile.dart';
import 'package:atone/pages/search.dart';

import 'package:atone/models/tab.dart';

const Map<TabItem, String> _tabInitialRoute = {
  TabItem.search: SearchPage.routeName,
  TabItem.chat: ChatPage.routeName,
  TabItem.profile: ProfilePage.routeName,
};

class TabNavigatorWidget extends StatelessWidget {
  TabNavigatorWidget({
    required this.navigatorKey,
    required this.tabItem,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      ChatPage.routeName: (context) => ChatPage(),
      ConditionPage.routeName: (context) => ConditionPage(),
      NewRoomPage.routeName: (context) => NewRoomPage(),
      ProfilePage.routeName: (context) => ProfilePage(),
      SearchPage.routeName: (context) => SearchPage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        var name = routeSettings.name!;

        if (routeSettings.name == '/') {
          name = _tabInitialRoute[tabItem]!;
        }

        return MaterialPageRoute(
          builder: (context) => routeBuilders[name]!(context),
        );
      },
    );
  }
}
