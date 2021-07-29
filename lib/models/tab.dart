import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'tab.freezed.dart';

enum TabItem { search, chat, profile }

@freezed
abstract class TabState with _$TabState {
  const factory TabState({
    @Default(TabItem.search) TabItem currentTab,
  }) = _TabState;
}

class TabStateNotifier extends StateNotifier<TabState> {
  TabStateNotifier() : super(TabState());

  change(TabItem tab) => state = state.copyWith(currentTab: tab);
}

final tabStateProvider = StateNotifierProvider<TabStateNotifier, TabState>(
  (_) => TabStateNotifier(),
);
