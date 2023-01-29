import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/example/sample/sample_item.dart';
import 'package:riverpod_paging_sample/example/sample/sample_repository.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

final offsetBasedSampleNotifier = AsyncNotifierProvider.autoDispose<
    OffsetBasedSampleNotifier, OffsetBasedSampleState>(
  () => OffsetBasedSampleNotifier(),
);

typedef OffsetBasedSampleState = OffsetBasedPagingData<SampleItem>;

class OffsetBasedSampleNotifier
    extends OffsetBasedPagingAsyncNotifier<SampleItem> {
  @override
  Future<OffsetBasedSampleState> build() async {
    final res = await ref.read(sampleRepositoryProvider).getByOffset();
    ref.keepAlive();

    return OffsetBasedSampleState(
      items: res //
          .items,
      offset: 0,
      hasMore: res.hasMore,
    );
  }

  @override
  Future<OffsetBasedSampleState> fetchNext(int offset) async {
    final res = await ref
        .read(sampleRepositoryProvider)
        .getByOffset(offset: offset + 50);
    ref.keepAlive();

    return OffsetBasedSampleState(
      items: res //
          .items,
      offset: offset + 50,
      hasMore: res.hasMore,
    );
  }
}
