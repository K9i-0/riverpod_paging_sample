// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageBasedPagingData<T extends PagingDataItem> {
  List<T> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageBasedPagingDataCopyWith<T, PageBasedPagingData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageBasedPagingDataCopyWith<T extends PagingDataItem, $Res> {
  factory $PageBasedPagingDataCopyWith(PageBasedPagingData<T> value,
          $Res Function(PageBasedPagingData<T>) then) =
      _$PageBasedPagingDataCopyWithImpl<T, $Res, PageBasedPagingData<T>>;
  @useResult
  $Res call({List<T> items, int page, bool hasMore});
}

/// @nodoc
class _$PageBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res,
        $Val extends PageBasedPagingData<T>>
    implements $PageBasedPagingDataCopyWith<T, $Res> {
  _$PageBasedPagingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageBasedPagingDataCopyWith<T extends PagingDataItem, $Res>
    implements $PageBasedPagingDataCopyWith<T, $Res> {
  factory _$$_PageBasedPagingDataCopyWith(_$_PageBasedPagingData<T> value,
          $Res Function(_$_PageBasedPagingData<T>) then) =
      __$$_PageBasedPagingDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, int page, bool hasMore});
}

/// @nodoc
class __$$_PageBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res>
    extends _$PageBasedPagingDataCopyWithImpl<T, $Res,
        _$_PageBasedPagingData<T>>
    implements _$$_PageBasedPagingDataCopyWith<T, $Res> {
  __$$_PageBasedPagingDataCopyWithImpl(_$_PageBasedPagingData<T> _value,
      $Res Function(_$_PageBasedPagingData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$_PageBasedPagingData<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PageBasedPagingData<T extends PagingDataItem>
    extends _PageBasedPagingData<T> {
  const _$_PageBasedPagingData(
      {required final List<T> items, required this.page, required this.hasMore})
      : _items = items,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int page;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'PageBasedPagingData<$T>(items: $items, page: $page, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageBasedPagingData<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageBasedPagingDataCopyWith<T, _$_PageBasedPagingData<T>> get copyWith =>
      __$$_PageBasedPagingDataCopyWithImpl<T, _$_PageBasedPagingData<T>>(
          this, _$identity);
}

abstract class _PageBasedPagingData<T extends PagingDataItem>
    extends PageBasedPagingData<T> {
  const factory _PageBasedPagingData(
      {required final List<T> items,
      required final int page,
      required final bool hasMore}) = _$_PageBasedPagingData<T>;
  const _PageBasedPagingData._() : super._();

  @override
  List<T> get items;
  @override
  int get page;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_PageBasedPagingDataCopyWith<T, _$_PageBasedPagingData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OffsetBasedPagingData<T extends PagingDataItem> {
  List<T> get items => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffsetBasedPagingDataCopyWith<T, OffsetBasedPagingData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetBasedPagingDataCopyWith<T extends PagingDataItem, $Res> {
  factory $OffsetBasedPagingDataCopyWith(OffsetBasedPagingData<T> value,
          $Res Function(OffsetBasedPagingData<T>) then) =
      _$OffsetBasedPagingDataCopyWithImpl<T, $Res, OffsetBasedPagingData<T>>;
  @useResult
  $Res call({List<T> items, int offset, bool hasMore});
}

/// @nodoc
class _$OffsetBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res,
        $Val extends OffsetBasedPagingData<T>>
    implements $OffsetBasedPagingDataCopyWith<T, $Res> {
  _$OffsetBasedPagingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? offset = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OffsetBasedPagingDataCopyWith<T extends PagingDataItem, $Res>
    implements $OffsetBasedPagingDataCopyWith<T, $Res> {
  factory _$$_OffsetBasedPagingDataCopyWith(_$_OffsetBasedPagingData<T> value,
          $Res Function(_$_OffsetBasedPagingData<T>) then) =
      __$$_OffsetBasedPagingDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, int offset, bool hasMore});
}

/// @nodoc
class __$$_OffsetBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res>
    extends _$OffsetBasedPagingDataCopyWithImpl<T, $Res,
        _$_OffsetBasedPagingData<T>>
    implements _$$_OffsetBasedPagingDataCopyWith<T, $Res> {
  __$$_OffsetBasedPagingDataCopyWithImpl(_$_OffsetBasedPagingData<T> _value,
      $Res Function(_$_OffsetBasedPagingData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? offset = null,
    Object? hasMore = null,
  }) {
    return _then(_$_OffsetBasedPagingData<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OffsetBasedPagingData<T extends PagingDataItem>
    extends _OffsetBasedPagingData<T> {
  const _$_OffsetBasedPagingData(
      {required final List<T> items,
      required this.offset,
      required this.hasMore})
      : _items = items,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int offset;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'OffsetBasedPagingData<$T>(items: $items, offset: $offset, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OffsetBasedPagingData<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), offset, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OffsetBasedPagingDataCopyWith<T, _$_OffsetBasedPagingData<T>>
      get copyWith => __$$_OffsetBasedPagingDataCopyWithImpl<T,
          _$_OffsetBasedPagingData<T>>(this, _$identity);
}

abstract class _OffsetBasedPagingData<T extends PagingDataItem>
    extends OffsetBasedPagingData<T> {
  const factory _OffsetBasedPagingData(
      {required final List<T> items,
      required final int offset,
      required final bool hasMore}) = _$_OffsetBasedPagingData<T>;
  const _OffsetBasedPagingData._() : super._();

  @override
  List<T> get items;
  @override
  int get offset;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_OffsetBasedPagingDataCopyWith<T, _$_OffsetBasedPagingData<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CursorBasedPagingData<T extends PagingDataItem> {
  List<T> get items => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CursorBasedPagingDataCopyWith<T, CursorBasedPagingData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursorBasedPagingDataCopyWith<T extends PagingDataItem, $Res> {
  factory $CursorBasedPagingDataCopyWith(CursorBasedPagingData<T> value,
          $Res Function(CursorBasedPagingData<T>) then) =
      _$CursorBasedPagingDataCopyWithImpl<T, $Res, CursorBasedPagingData<T>>;
  @useResult
  $Res call({List<T> items, String? nextCursor, bool hasMore});
}

/// @nodoc
class _$CursorBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res,
        $Val extends CursorBasedPagingData<T>>
    implements $CursorBasedPagingDataCopyWith<T, $Res> {
  _$CursorBasedPagingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CursorBasedPagingDataCopyWith<T extends PagingDataItem, $Res>
    implements $CursorBasedPagingDataCopyWith<T, $Res> {
  factory _$$_CursorBasedPagingDataCopyWith(_$_CursorBasedPagingData<T> value,
          $Res Function(_$_CursorBasedPagingData<T>) then) =
      __$$_CursorBasedPagingDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, String? nextCursor, bool hasMore});
}

/// @nodoc
class __$$_CursorBasedPagingDataCopyWithImpl<T extends PagingDataItem, $Res>
    extends _$CursorBasedPagingDataCopyWithImpl<T, $Res,
        _$_CursorBasedPagingData<T>>
    implements _$$_CursorBasedPagingDataCopyWith<T, $Res> {
  __$$_CursorBasedPagingDataCopyWithImpl(_$_CursorBasedPagingData<T> _value,
      $Res Function(_$_CursorBasedPagingData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(_$_CursorBasedPagingData<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CursorBasedPagingData<T extends PagingDataItem>
    extends _CursorBasedPagingData<T> {
  const _$_CursorBasedPagingData(
      {required final List<T> items,
      required this.nextCursor,
      required this.hasMore})
      : _items = items,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextCursor;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'CursorBasedPagingData<$T>(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CursorBasedPagingData<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), nextCursor, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CursorBasedPagingDataCopyWith<T, _$_CursorBasedPagingData<T>>
      get copyWith => __$$_CursorBasedPagingDataCopyWithImpl<T,
          _$_CursorBasedPagingData<T>>(this, _$identity);
}

abstract class _CursorBasedPagingData<T extends PagingDataItem>
    extends CursorBasedPagingData<T> {
  const factory _CursorBasedPagingData(
      {required final List<T> items,
      required final String? nextCursor,
      required final bool hasMore}) = _$_CursorBasedPagingData<T>;
  const _CursorBasedPagingData._() : super._();

  @override
  List<T> get items;
  @override
  String? get nextCursor;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_CursorBasedPagingDataCopyWith<T, _$_CursorBasedPagingData<T>>
      get copyWith => throw _privateConstructorUsedError;
}
