import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/example/sample/sample_item.dart';
import 'package:riverpod_paging_sample/example/sample/sample_repository.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

final pageBasedSampleNotifierProvider = AsyncNotifierProvider.autoDispose<
    PageBasedSampleNotifier, PageBasedSampleState>(
  () => PageBasedSampleNotifier(),
);

typedef PageBasedSampleState = PageBasedPagingData<SampleItem>;

class PageBasedSampleNotifier extends PageBasedPagingAsyncNotifier<SampleItem> {
  /// １ページ目の取得処理
  @override
  Future<PageBasedSampleState> build() async {
    final res = await ref.read(sampleRepositoryProvider).getByPage();
    ref.keepAlive();

    return PageBasedSampleState(
      items: res //
          .items,
      page: 0,
      hasMore: res.hasMore,
    );
  }

  /// 2ページ目以降の取得処理
  /// エラーハンドリングなどはPageBasedPagingAsyncNotifier側でよしなに行われるので、ここでは取得処理のみを記述する
  @override
  Future<PageBasedSampleState> fetchNext(int page) async {
    final res =
        await ref.read(sampleRepositoryProvider).getByPage(page: page + 1);
    ref.keepAlive();

    return PageBasedSampleState(
      items: res //
          .items,
      page: page + 1,
      hasMore: res.hasMore,
    );
  }
}
