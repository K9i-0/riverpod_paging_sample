import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';
import 'package:riverpod_paging_sample/sample/sample_item.dart';
import 'package:riverpod_paging_sample/sample/sample_repository.dart';

final pageBasedSampleNotifier = AsyncNotifierProvider.autoDispose<
    PageBasedSampleNotifier, PageBasedSampleState>(
  () => PageBasedSampleNotifier(),
);

typedef PageBasedSampleState = PageBasedPagingData<SampleItem>;

class PageBasedSampleNotifier extends PageBasedPagingAsyncNotifier<SampleItem> {
  @override
  Future<PageBasedSampleState> build() async {
    final res = await ref.read(sampleRepositoryProvider).getByPage();
    ref.keepAlive();

    return PageBasedSampleState(
      items: res //
          .items,
      page: 0,
      hasMore: true,
    );
  }

  @override
  Future<PageBasedSampleState> fetchNext(int page) async {
    print('fetchNext($page)');
    final res =
        await ref.read(sampleRepositoryProvider).getByPage(page: page + 1);
    ref.keepAlive();

    return PageBasedSampleState(
      items: res //
          .items,
      page: page + 1,
      hasMore: true,
    );
  }
}
