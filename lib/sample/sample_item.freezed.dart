// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleItemCopyWith<SampleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemCopyWith<$Res> {
  factory $SampleItemCopyWith(
          SampleItem value, $Res Function(SampleItem) then) =
      _$SampleItemCopyWithImpl<$Res, SampleItem>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$SampleItemCopyWithImpl<$Res, $Val extends SampleItem>
    implements $SampleItemCopyWith<$Res> {
  _$SampleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleItemCopyWith<$Res>
    implements $SampleItemCopyWith<$Res> {
  factory _$$_SampleItemCopyWith(
          _$_SampleItem value, $Res Function(_$_SampleItem) then) =
      __$$_SampleItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_SampleItemCopyWithImpl<$Res>
    extends _$SampleItemCopyWithImpl<$Res, _$_SampleItem>
    implements _$$_SampleItemCopyWith<$Res> {
  __$$_SampleItemCopyWithImpl(
      _$_SampleItem _value, $Res Function(_$_SampleItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_SampleItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SampleItem with DiagnosticableTreeMixin implements _SampleItem {
  const _$_SampleItem({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleItem(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleItemCopyWith<_$_SampleItem> get copyWith =>
      __$$_SampleItemCopyWithImpl<_$_SampleItem>(this, _$identity);
}

abstract class _SampleItem implements SampleItem {
  const factory _SampleItem(
      {required final String id, required final String name}) = _$_SampleItem;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SampleItemCopyWith<_$_SampleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SampleItemState {
// graphql_codegenで生成したクラス等を持たせる
  SampleItem get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleItemStateCopyWith<SampleItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemStateCopyWith<$Res> {
  factory $SampleItemStateCopyWith(
          SampleItemState value, $Res Function(SampleItemState) then) =
      _$SampleItemStateCopyWithImpl<$Res, SampleItemState>;
  @useResult
  $Res call({SampleItem item});

  $SampleItemCopyWith<$Res> get item;
}

/// @nodoc
class _$SampleItemStateCopyWithImpl<$Res, $Val extends SampleItemState>
    implements $SampleItemStateCopyWith<$Res> {
  _$SampleItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as SampleItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleItemCopyWith<$Res> get item {
    return $SampleItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SampleItemStateCopyWith<$Res>
    implements $SampleItemStateCopyWith<$Res> {
  factory _$$_SampleItemStateCopyWith(
          _$_SampleItemState value, $Res Function(_$_SampleItemState) then) =
      __$$_SampleItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SampleItem item});

  @override
  $SampleItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_SampleItemStateCopyWithImpl<$Res>
    extends _$SampleItemStateCopyWithImpl<$Res, _$_SampleItemState>
    implements _$$_SampleItemStateCopyWith<$Res> {
  __$$_SampleItemStateCopyWithImpl(
      _$_SampleItemState _value, $Res Function(_$_SampleItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_SampleItemState(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as SampleItem,
    ));
  }
}

/// @nodoc

class _$_SampleItemState extends _SampleItemState with DiagnosticableTreeMixin {
  _$_SampleItemState({required this.item}) : super._();

// graphql_codegenで生成したクラス等を持たせる
  @override
  final SampleItem item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleItemState(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleItemState'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleItemState &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleItemStateCopyWith<_$_SampleItemState> get copyWith =>
      __$$_SampleItemStateCopyWithImpl<_$_SampleItemState>(this, _$identity);
}

abstract class _SampleItemState extends SampleItemState {
  factory _SampleItemState({required final SampleItem item}) =
      _$_SampleItemState;
  _SampleItemState._() : super._();

  @override // graphql_codegenで生成したクラス等を持たせる
  SampleItem get item;
  @override
  @JsonKey(ignore: true)
  _$$_SampleItemStateCopyWith<_$_SampleItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
