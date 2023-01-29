import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/example/sample/sample_item.dart';
import 'package:riverpod_paging_sample/example/sample/sample_repository.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

final cursorBasedSampleNotifier = AsyncNotifierProvider.autoDispose<
    CursorBasedSampleNotifier, CursorBasedSampleState>(
  () => CursorBasedSampleNotifier(),
);

typedef CursorBasedSampleState = CursorBasedPagingData<SampleItem>;

class CursorBasedSampleNotifier
    extends CursorBasedPagingAsyncNotifier<SampleItem> {
  @override
  Future<CursorBasedSampleState> build() async {
    final res = await ref.read(sampleRepositoryProvider).getByCursor();
    ref.keepAlive();

    return CursorBasedSampleState(
      items: res //
          .items,
      nextCursor: res.nextCursor,
      hasMore: res.nextCursor != null,
    );
  }

  @override
  Future<CursorBasedSampleState> fetchNext(String nextCursor) async {
    final res = await ref
        .read(sampleRepositoryProvider)
        .getByCursor(nextCursor: nextCursor);
    ref.keepAlive();

    return CursorBasedSampleState(
      items: res //
          .items,
      nextCursor: res.nextCursor,
      hasMore: res.nextCursor != null,
    );
  }
}
