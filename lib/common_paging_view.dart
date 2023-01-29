import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/async_value_extension.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CommonPagingView<
    N extends PagingAsyncNotifier<D>,
    D extends PagingData<I>,
    I extends PagingDataItem> extends HookConsumerWidget {
  final AutoDisposeAsyncNotifierProvider<N, D> provider;
  final Widget Function(D data, Widget? endItem) data;
  const CommonPagingView(
    this.provider, {
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // スナックバーによるエラー表示
    ref.listen(provider, (_, state) {
      state.showSnackbarOnError(context);
    });

    return ref.watch(provider).whenPlus(
          data: (data, hasError) {
            return RefreshIndicator(
              onRefresh: () => ref.refresh(provider.future),
              child: this.data(
                data,
                // 次のページがあり、かつエラーがない場合に、最後の要素に達したことを検知するためのWidgetを表示する
                data.hasMore && !hasError
                    ? EndItem(
                        onScrollEnd: () =>
                            ref.read(provider.notifier).loadNext(),
                      )
                    : null,
              ),
            );
          },
          // １ページ目のロード中
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          // １ページ目のエラー
          error: (e, st) => Center(
            // TODO(K9i-0): 仮実装リトライ
            child: Text(e.toString()),
          ),
          // 2ページ目以降のエラーでデータを優先する
          skipErrorOnHasValue: true,
        );
  }
}

class EndItem extends StatelessWidget {
  final VoidCallback onScrollEnd;
  const EndItem({
    super.key,
    required this.onScrollEnd,
  });

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: key ?? const Key('EndItem'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1) {
          onScrollEnd();
        }
      },
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
