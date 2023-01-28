import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/async_value_extension.dart';
import 'package:riverpod_paging_sample/paging_async_notifier.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

class CommonPagingView<
    N extends PagingAsyncNotifier<D>,
    D extends PagingData<I>,
    I extends PagingDataItem> extends HookConsumerWidget {
  final AutoDisposeAsyncNotifierProvider<N, D> provider;
  final ScrollController scrollController;
  final int pagingThreshold;
  final Widget Function(D data) data;
  final Widget Function(Object error, StackTrace? stackTrace)? firstError;
  final Widget Function()? firstLoading;
  // TODO(K9i-0): 仮実装使ってない
  final Future<void> Function()? firstErrorRetryCallback;
  const CommonPagingView(
    this.provider, {
    required this.scrollController,
    this.pagingThreshold = 200,
    required this.data,
    this.firstLoading,
    this.firstError,
    this.firstErrorRetryCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // スナックバーによるエラー表示
    ref.listen(provider, (_, state) {
      state.showSnackbarOnError(context);
    });

    final defaultLoadingWidgetBuilder = firstLoading ??
        () => const Center(
              child: CircularProgressIndicator(),
            );
    final defaultErrorWidgetBuilder = firstError ??
        (e, st) => Center(
              // TODO(K9i-0): 仮実装リトライ
              child: Text(e.toString()),
            );

    return ref.watch(provider).whenPlus(
          data: (data, hasError) {
            return RefreshIndicator(
              onRefresh: () => ref.refresh(provider.future),
              child: PagingIndicator(
                scrollController: scrollController,
                onPaging: () => ref.read(provider.notifier).loadNext(),
                // 次のページがあるかつエラーがない場合のみ次のページを読み込む
                hasMore: data.hasMore && !hasError,
                child: this.data(data),
              ),
            );
          },
          error: defaultErrorWidgetBuilder,
          loading: defaultLoadingWidgetBuilder,
          // 2ページ目以降のエラーでデータを優先する
          skipErrorOnHasValue: true,
        );
  }
}

typedef PagingCallback = Future<void> Function();

class PagingIndicator extends HookConsumerWidget {
  final ScrollController scrollController;
  final PagingCallback onPaging;
  final bool hasMore;
  final int pagingThreshold;
  final Widget child;
  const PagingIndicator({
    required this.scrollController,
    required this.onPaging,
    required this.hasMore,
    this.pagingThreshold = 200,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);

    // initStateの代わり
    useEffect(() {
      // スクロール量が閾値を超えたら次のページを読み込む
      scrollController.addListener(() {
        // 閾値判定
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - pagingThreshold) {
          if (hasMore) {
            isLoading.value = true;
            onPaging().whenComplete(() => isLoading.value = false);
          }
        }
      });
      return null;
    }, [scrollController]);

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        child,
        // 最下部にロード中を表示
        Positioned(
          bottom: 0 + MediaQuery.of(context).padding.bottom,
          child: AnimatedOpacity(
            opacity: isLoading.value ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: const CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
