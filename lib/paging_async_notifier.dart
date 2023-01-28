import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/async_value_extension.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

abstract class PagingAsyncNotifier<T extends PagingData>
    extends AutoDisposeAsyncNotifier<T> {
  Future<void> loadNext();
}

/// PageBasedPagingを実装するためのNotifier
/// [build]と[fetchNext]をoverrideすることで、ローディングやエラーが勝手に処理される
abstract class PageBasedPagingAsyncNotifier<T extends PagingDataItem>
    extends PagingAsyncNotifier<PageBasedPagingData<T>> {
  /// 2ページ目以降のデータを取得するメソッド
  /// [PageBasedPagingAsyncNotifier]を継承したクラス内（もっと言えば[loadNext]）からしか呼ばない想定
  Future<PageBasedPagingData<T>> fetchNext(int page);

  /// 2ページ目以降のデータを取得する
  /// 基本的にoverrideする必要はない
  @override
  Future<void> loadNext() async {
    // データがない時は何もしない
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    // エラーがある時は何もしない
    if (state.hasError) {
      return;
    }

    if (value.hasMore) {
      state = AsyncLoading<PageBasedPagingData<T>>().copyWithPrevious(state);

      state = await state.guardPlus(
        () async {
          final next = await fetchNext(value.page + 1);

          return value.copyWith(
            items: [...value.items, ...next.items],
            page: value.page + 1,
            hasMore: next.hasMore,
          );
        },
      );
    }
  }
}

abstract class OffsetBasedPagingAsyncNotifier<T extends PagingDataItem>
    extends PagingAsyncNotifier<OffsetBasedPagingData<T>> {
  /// 2ページ目以降のデータを取得するメソッド
  /// [OffsetBasedPagingAsyncNotifier]を継承したクラス内（もっと言えば[loadNext]）からしか呼ばない想定
  Future<OffsetBasedPagingData<T>> fetchNext(int offset);

  /// 2ページ目以降のデータを取得する
  /// 基本的にoverrideする必要はない
  @override
  Future<void> loadNext() async {
    // データがない時は何もしない
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    // エラーがある時は何もしない
    if (state.hasError) {
      return;
    }

    if (value.hasMore) {
      state = AsyncLoading<OffsetBasedPagingData<T>>().copyWithPrevious(state);

      state = await state.guardPlus(
        () async {
          final next = await fetchNext(value.offset);

          return value.copyWith(
            items: [...value.items, ...next.items],
            offset: next.offset,
            hasMore: next.hasMore,
          );
        },
      );
    }
  }
}

/// CursorPagingを実装するためのNotifier
/// [build]と[fetchNext]をoverrideすることで、ローディングやエラーが勝手に処理される
abstract class CursorBasedPagingAsyncNotifier<T extends PagingDataItem>
    extends PagingAsyncNotifier<CursorBasedPagingData<T>> {
  /// 2ページ目以降のデータを取得するメソッド
  /// [CursorPagingAsyncNotifier]を継承したクラス内（もっと言えば[loadNext]）からしか呼ばない想定
  Future<CursorBasedPagingData<T>> fetchNext(String nextCursor);

  /// 2ページ目以降のデータを取得する
  /// 基本的にoverrideする必要はない
  @override
  Future<void> loadNext() async {
    // データがない時は何もしない
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    // エラーがある時は何もしない
    if (state.hasError) {
      return;
    }

    final nextCursor = value.nextCursor;
    if (nextCursor != null) {
      state = AsyncLoading<CursorBasedPagingData<T>>().copyWithPrevious(state);

      state = await state.guardPlus(
        () async {
          final next = await fetchNext(nextCursor);

          return value.copyWith(
            items: [...value.items, ...next.items],
            nextCursor: next.nextCursor,
            hasMore: next.hasMore,
          );
        },
      );
    }
  }
}
