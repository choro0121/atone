import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user.freezed.dart';

enum Sex { male, female }

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required String id,
    required String name,
    required String bio,
    Sex? sex,
  }) = _UserState;
}

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier()
      : super(const UserState(
          id: '',
          name: '',
          bio: '',
        ));

  setUser(UserState user) => state = user;
}

final userStateProvider = StateNotifierProvider<UserStateNotifier, UserState>(
  (_) => UserStateNotifier(),
);
