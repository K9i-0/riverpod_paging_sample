import 'package:flutter/material.dart';
import 'package:riverpod_paging_sample/common_paging_view.dart';
import 'package:riverpod_paging_sample/sample/cursor_based_sample_notifier.dart';

/// Cursor based Pagingのサンプル
class CursorBasedView extends StatelessWidget {
  const CursorBasedView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPagingView(
      provider: cursorBasedSampleNotifier,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('cursorBasedView'),
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
