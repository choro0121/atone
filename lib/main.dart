import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:atone/models/tab.dart';
import 'package:atone/widgets/bottom_navigation.dart';
import 'package:atone/widgets/tab_navigator.dart';

// tab nested navigator
// https://github.com/bizz84/nested-navigation-demo-flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TabModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: App(),
      ),
    );
  }
}

class App extends StatelessWidget {
  final _navKeys = {
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.chat: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
  };

  void _selectTab(BuildContext context, TabItem tabItem) {
    final tabModel = Provider.of<TabModel>(context, listen: false);

    if (tabModel.currentTab == tabItem) {
      _navKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      tabModel.change(tabItem);
    }
  }

  Widget _buildOffstageNavigator(BuildContext context, TabItem tabItem) {
    final tabModel = Provider.of<TabModel>(context);

    return Offstage(
      offstage: tabModel.currentTab != tabItem,
      child: TabNavigatorWidget(
        navigatorKey: _navKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabModel = Provider.of<TabModel>(context);

    return WillPopScope(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationWidget(
            currentTab: tabModel.currentTab,
            onSelectTab: (tabItem) => _selectTab(context, tabItem),
          ),
          body: Stack(
            children: [
              _buildOffstageNavigator(context, TabItem.search),
              _buildOffstageNavigator(context, TabItem.chat),
              _buildOffstageNavigator(context, TabItem.profile),
            ],
          )),
      onWillPop: () async {
        // is first route in current tab
        final first =
            !await _navKeys[tabModel.currentTab]!.currentState!.maybePop();
        if (first) {
          if (tabModel.currentTab != TabItem.search) {
            _selectTab(context, TabItem.search);
            return false;
          }
        }
        return first;
      },
    );
  }
}
