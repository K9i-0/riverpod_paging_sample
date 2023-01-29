import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/sample/cursor_based_sample_notifier.dart';
import 'package:riverpod_paging_sample/sample/cursor_based_view.dart';
import 'package:riverpod_paging_sample/sample/offset_based_sample_notifier.dart';
import 'package:riverpod_paging_sample/sample/offset_based_view.dart';
import 'package:riverpod_paging_sample/sample/page_based_sample_notifier.dart';
import 'package:riverpod_paging_sample/sample/page_based_view.dart';

class SampleScreen extends HookConsumerWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Paging Sample'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: '強制リフレッシュ',
            onPressed: () {
              ref.read(pageBasedSampleNotifier.notifier).forceRefresh();
              ref.read(offsetBasedSampleNotifier.notifier).forceRefresh();
              ref.read(cursorBasedSampleNotifier.notifier).forceRefresh();
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: '設定',
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'ページベース'),
            Tab(text: 'オフセットベース'),
            Tab(text: 'カーソルベース'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          PageBasedView(),
          OffsetBasedView(),
          CursorBasedView(),
        ],
      ),
    );
  }
}
