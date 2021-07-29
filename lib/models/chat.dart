import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'chat.freezed.dart';

@immutable
abstract class ChatItem with _$ChatItem {
  const factory ChatItem({
    required String userId,
    required String text,
    required DateTime timestamp,
  }) = _ChatItem;
}

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default(<ChatItem>[]) List<ChatItem> items,
  }) = _ChatState;
}

class ChatStateNotifier extends StateNotifier<ChatState> {
  ChatStateNotifier() : super(ChatState());

  set(List<ChatItem> list) => state = state.copyWith(items: list);

  append(ChatItem item) =>
      state = state.copyWith(items: [...state.items, item]);
}

final chatStateProvider = StateNotifierProvider<ChatStateNotifier, ChatState>(
  (_) => ChatStateNotifier(),
);
