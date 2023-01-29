import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_paging_sample/common_paging_view.dart';
import 'package:riverpod_paging_sample/sample/page_based_sample_notifier.dart';

/// Page based Pagingのサンプル
class PageBasedView extends HookWidget {
  const PageBasedView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPagingView(
      provider: pageBasedSampleNotifier,
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
