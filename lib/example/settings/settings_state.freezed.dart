// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  bool get forceFirstPageError => throw _privateConstructorUsedError;
  bool get forceNextPageError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool forceFirstPageError, bool forceNextPageError});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceFirstPageError = null,
    Object? forceNextPageError = null,
  }) {
    return _then(_value.copyWith(
      forceFirstPageError: null == forceFirstPageError
          ? _value.forceFirstPageError
          : forceFirstPageError // ignore: cast_nullable_to_non_nullable
              as bool,
      forceNextPageError: null == forceNextPageError
          ? _value.forceNextPageError
          : forceNextPageError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool forceFirstPageError, bool forceNextPageError});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceFirstPageError = null,
    Object? forceNextPageError = null,
  }) {
    return _then(_$_SettingsState(
      forceFirstPageError: null == forceFirstPageError
          ? _value.forceFirstPageError
          : forceFirstPageError // ignore: cast_nullable_to_non_nullable
              as bool,
      forceNextPageError: null == forceNextPageError
          ? _value.forceNextPageError
          : forceNextPageError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsState with DiagnosticableTreeMixin implements _SettingsState {
  const _$_SettingsState(
      {required this.forceFirstPageError, required this.forceNextPageError});

  @override
  final bool forceFirstPageError;
  @override
  final bool forceNextPageError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(forceFirstPageError: $forceFirstPageError, forceNextPageError: $forceNextPageError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('forceFirstPageError', forceFirstPageError))
      ..add(DiagnosticsProperty('forceNextPageError', forceNextPageError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.forceFirstPageError, forceFirstPageError) ||
                other.forceFirstPageError == forceFirstPageError) &&
            (identical(other.forceNextPageError, forceNextPageError) ||
                other.forceNextPageError == forceNextPageError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, forceFirstPageError, forceNextPageError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final bool forceFirstPageError,
      required final bool forceNextPageError}) = _$_SettingsState;

  @override
  bool get forceFirstPageError;
  @override
  bool get forceNextPageError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
