// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabStateTearOff {
  const _$TabStateTearOff();

  _TabState call({TabItem currentTab = TabItem.search}) {
    return _TabState(
      currentTab: currentTab,
    );
  }
}

/// @nodoc
const $TabState = _$TabStateTearOff();

/// @nodoc
mixin _$TabState {
  TabItem get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabStateCopyWith<TabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabStateCopyWith<$Res> {
  factory $TabStateCopyWith(TabState value, $Res Function(TabState) then) =
      _$TabStateCopyWithImpl<$Res>;
  $Res call({TabItem currentTab});
}

/// @nodoc
class _$TabStateCopyWithImpl<$Res> implements $TabStateCopyWith<$Res> {
  _$TabStateCopyWithImpl(this._value, this._then);

  final TabState _value;
  // ignore: unused_field
  final $Res Function(TabState) _then;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as TabItem,
    ));
  }
}

/// @nodoc
abstract class _$TabStateCopyWith<$Res> implements $TabStateCopyWith<$Res> {
  factory _$TabStateCopyWith(_TabState value, $Res Function(_TabState) then) =
      __$TabStateCopyWithImpl<$Res>;
  @override
  $Res call({TabItem currentTab});
}

/// @nodoc
class __$TabStateCopyWithImpl<$Res> extends _$TabStateCopyWithImpl<$Res>
    implements _$TabStateCopyWith<$Res> {
  __$TabStateCopyWithImpl(_TabState _value, $Res Function(_TabState) _then)
      : super(_value, (v) => _then(v as _TabState));

  @override
  _TabState get _value => super._value as _TabState;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_TabState(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as TabItem,
    ));
  }
}

/// @nodoc

class _$_TabState with DiagnosticableTreeMixin implements _TabState {
  const _$_TabState({this.currentTab = TabItem.search});

  @JsonKey(defaultValue: TabItem.search)
  @override
  final TabItem currentTab;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabState(currentTab: $currentTab)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabState'))
      ..add(DiagnosticsProperty('currentTab', currentTab));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabState &&
            (identical(other.currentTab, currentTab) ||
                const DeepCollectionEquality()
                    .equals(other.currentTab, currentTab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentTab);

  @JsonKey(ignore: true)
  @override
  _$TabStateCopyWith<_TabState> get copyWith =>
      __$TabStateCopyWithImpl<_TabState>(this, _$identity);
}

abstract class _TabState implements TabState {
  const factory _TabState({TabItem currentTab}) = _$_TabState;

  @override
  TabItem get currentTab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TabStateCopyWith<_TabState> get copyWith =>
      throw _privateConstructorUsedError;
}
