# riverpod_paging_sample

- Riverpodを使って汎用的なページング実装を行うサンプルです。
- AsyncNotifierを継承したクラスを用意して、手軽にページングの実装が行えるようにします
- 複数のページング形式に対応しています。
  - Page Based Paging
  - Offset Based Paging
  - Cursor Based Paging

# デモ動画


https://user-images.githubusercontent.com/90010509/215915575-1953ceb4-8fe2-44e2-ae9d-9a77d6903cb7.mp4



# 使用例
以下の２ステップで、でも動画のようなページング画面が実装できます。

## Notifierを定義
AsyncNotifierにページング用機能を追加したPageBasedPagingAsyncNotifierを継承したNotifierを定義します。
```
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
```

## 汎用Widgetを使う
CommonPagingViewに先ほど定義したpageBasedSampleNotifierProviderを渡します。
```
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_paging_sample/common_paging_view.dart';
import 'package:riverpod_paging_sample/example/sample/page_based_sample_notifier.dart';

/// Page based Pagingのサンプル
class PageBasedView extends HookWidget {
  const PageBasedView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPagingView(
      provider: pageBasedSampleNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }

          return ListTile(
            title: Text(data.items[index].name),
            subtitle: Text(data.items[index].id),
          );
        },
      ),
    );
  }
}
```

# Zapp!で試す👇
https://zapp.run/github/K9i-0/riverpod_paging_sample

# 解説記事

https://zenn.dev/k9i/articles/b8c333e1bb8b9b