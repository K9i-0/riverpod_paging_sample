import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_paging_sample/common_paging_view.dart';
import 'package:riverpod_paging_sample/sample/page_based_sample_notifier.dart';

class PageBasedView extends HookWidget {
  const PageBasedView({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return CommonPagingView(
      pageBasedSampleNotifier,
      scrollController: scrollController,
      data: (data) => ListView(
        controller: scrollController,
        children: data.items
            .map(
              (e) => ListTile(
                title: Text(e.name),
              ),
            )
            .toList(),
      ),
    );
  }
}
