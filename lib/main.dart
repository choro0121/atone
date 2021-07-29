import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(elevation: 0.0),
        ),
        debugShowCheckedModeBanner: false,
        home: App(),
      ),
    );
  }
}

class App extends HookWidget {
  final _navKeys = {
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.chat: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
  };

  void _selectTab(BuildContext context, TabItem newTab) {
    if (context.read(tabStateProvider).currentTab == newTab) {
      _navKeys[newTab]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      context.read(tabStateProvider.notifier).change(newTab);
    }
  }

  Widget _buildOffstageNavigator(TabItem currentTab, TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigatorWidget(
        navigatorKey: _navKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabState = useProvider(tabStateProvider);

    return WillPopScope(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationWidget(
            currentTab: tabState.currentTab,
            onSelectTab: (tabItem) => _selectTab(context, tabItem),
          ),
          body: Stack(
            children: [
              _buildOffstageNavigator(tabState.currentTab, TabItem.search),
              _buildOffstageNavigator(tabState.currentTab, TabItem.chat),
              _buildOffstageNavigator(tabState.currentTab, TabItem.profile),
            ],
          )),
      onWillPop: () async {
        // is first route in current tab
        final first =
            !await _navKeys[tabState.currentTab]!.currentState!.maybePop();
        if (first) {
          if (tabState.currentTab != TabItem.search) {
            _selectTab(context, TabItem.search);
            return false;
          }
        }
        return first;
      },
    );
  }
}
