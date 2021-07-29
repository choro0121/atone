// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatItemTearOff {
  const _$ChatItemTearOff();

  _ChatItem call(
      {required String userId,
      required String text,
      required DateTime timestamp}) {
    return _ChatItem(
      userId: userId,
      text: text,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
const $ChatItem = _$ChatItemTearOff();

/// @nodoc
mixin _$ChatItem {
  String get userId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatItemCopyWith<ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemCopyWith<$Res> {
  factory $ChatItemCopyWith(ChatItem value, $Res Function(ChatItem) then) =
      _$ChatItemCopyWithImpl<$Res>;
  $Res call({String userId, String text, DateTime timestamp});
}

/// @nodoc
class _$ChatItemCopyWithImpl<$Res> implements $ChatItemCopyWith<$Res> {
  _$ChatItemCopyWithImpl(this._value, this._then);

  final ChatItem _value;
  // ignore: unused_field
  final $Res Function(ChatItem) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? text = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemCopyWith<$Res> implements $ChatItemCopyWith<$Res> {
  factory _$ChatItemCopyWith(_ChatItem value, $Res Function(_ChatItem) then) =
      __$ChatItemCopyWithImpl<$Res>;
  @override
  $Res call({String userId, String text, DateTime timestamp});
}

/// @nodoc
class __$ChatItemCopyWithImpl<$Res> extends _$ChatItemCopyWithImpl<$Res>
    implements _$ChatItemCopyWith<$Res> {
  __$ChatItemCopyWithImpl(_ChatItem _value, $Res Function(_ChatItem) _then)
      : super(_value, (v) => _then(v as _ChatItem));

  @override
  _ChatItem get _value => super._value as _ChatItem;

  @override
  $Res call({
    Object? userId = freezed,
    Object? text = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_ChatItem(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ChatItem with DiagnosticableTreeMixin implements _ChatItem {
  const _$_ChatItem(
      {required this.userId, required this.text, required this.timestamp});

  @override
  final String userId;
  @override
  final String text;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatItem(userId: $userId, text: $text, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatItem'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatItem &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$ChatItemCopyWith<_ChatItem> get copyWith =>
      __$ChatItemCopyWithImpl<_ChatItem>(this, _$identity);
}

abstract class _ChatItem implements ChatItem {
  const factory _ChatItem(
      {required String userId,
      required String text,
      required DateTime timestamp}) = _$_ChatItem;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatItemCopyWith<_ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call({List<ChatItem> items = const <ChatItem>[]}) {
    return _ChatState(
      items: items,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<ChatItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<ChatItem> items});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>,
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatItem> items});
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_ChatState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>,
    ));
  }
}

/// @nodoc

class _$_ChatState with DiagnosticableTreeMixin implements _ChatState {
  const _$_ChatState({this.items = const <ChatItem>[]});

  @JsonKey(defaultValue: const <ChatItem>[])
  @override
  final List<ChatItem> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState({List<ChatItem> items}) = _$_ChatState;

  @override
  List<ChatItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
