import 'package:flutter/material.dart';

enum TabItem { search, chat, profile }

class TabModel extends ChangeNotifier {
  TabItem _currentTab = TabItem.search;
  TabItem get currentTab => _currentTab;

  void change(TabItem tabItem) {
    _currentTab = tabItem;
    notifyListeners();
  }
}
