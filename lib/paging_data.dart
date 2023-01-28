import 'package:collection/collection.dart';
// ignore: unused_import, directives_ordering
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'paging_data.freezed.dart';

/// PagingDataのitemの基底クラス
/// [id]を持つことを強制する
abstract class PagingDataItem {
  String get id;
}

/// 汎用ページングWidgetを使うための基底クラス
abstract class PagingData<T extends PagingDataItem> {
  List<T> get items;
  bool get hasMore;
}

@freezed
class PageBasedPagingData<T extends PagingDataItem>
    with _$PageBasedPagingData<T>
    implements PagingData<T> {
  const PageBasedPagingData._();
  const factory PageBasedPagingData({
    required List<T> items,
    required int page,
    required bool hasMore,
  }) = _PageBasedPagingData<T>;
}

@freezed
class OffsetBasedPagingData<T extends PagingDataItem>
    with _$OffsetBasedPagingData<T>
    implements PagingData<T> {
  const OffsetBasedPagingData._();
  const factory OffsetBasedPagingData({
    required List<T> items,
    required int offset,
    required bool hasMore,
  }) = _OffsetBasedPagingData<T>;
}

@freezed
class CursorBasedPagingData<T extends PagingDataItem>
    with _$CursorBasedPagingData<T>
    implements PagingData<T> {
  const CursorBasedPagingData._();
  const factory CursorBasedPagingData({
    required List<T> items,
    required String? nextCursor,
    required bool hasMore,
  }) = _CursorBasedPagingData<T>;
}

extension PagingDataX<T extends PagingDataItem> on PagingData<T> {
  /// [id]と[selector]を指定してitemのフィールドを取得する
  F? getField<F>({
    required String id,
    required F Function(T item) selector,
  }) {
    final item = items.firstWhereOrNull((item) => item.id == id);

    return item != null ? selector(item) : null;
  }
}

extension PageBasedPagingDataX<T extends PagingDataItem>
    on PageBasedPagingData<T> {
  /// [id]と[itemBuilder]を指定してitemを更新する
  PageBasedPagingData<T> updateItem({
    required String id,
    required T Function(T prev) itemBuilder,
  }) {
    return copyWith(
      items: items
          .map((item) => item.id == id ? itemBuilder(item) : item)
          .toList(growable: false),
    );
  }
}

extension OffsetBasedPagingDataX<T extends PagingDataItem>
    on OffsetBasedPagingData<T> {
  /// [id]と[itemBuilder]を指定してitemを更新する
  OffsetBasedPagingData<T> updateItem({
    required String id,
    required T Function(T prev) itemBuilder,
  }) {
    return copyWith(
      items: items
          .map((item) => item.id == id ? itemBuilder(item) : item)
          .toList(growable: false),
    );
  }
}

extension CursorBasedPagingDataX<T extends PagingDataItem>
    on CursorBasedPagingData<T> {
  /// [id]と[itemBuilder]を指定してitemを更新する
  CursorBasedPagingData<T> updateItem({
    required String id,
    required T Function(T prev) itemBuilder,
  }) {
    return copyWith(
      items: items
          .map((item) => item.id == id ? itemBuilder(item) : item)
          .toList(growable: false),
    );
  }
}

extension AsyncValuePagingDataX<T extends PagingDataItem>
    on AsyncValue<PagingData<T>> {
  // 2ページ目以降のデータをロード中かどうか
  bool get isNextPageLoading => hasValue && isLoading;
}
