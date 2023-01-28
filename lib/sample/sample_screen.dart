import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/sample/cursor_based_view.dart';
import 'package:riverpod_paging_sample/sample/offset_based_view.dart';
import 'package:riverpod_paging_sample/sample/page_based_view.dart';

enum PagingType {
  pageBased("ページベース"),
  offsetBased("オフセットベース"),
  cursorBased("カーソルベース");

  final String label;
  const PagingType(this.label);
}

class SampleScreen extends HookConsumerWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController =
        useTabController(initialLength: PagingType.values.length);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paging Sample'),
        bottom: TabBar(
          controller: tabController,
          tabs: PagingType.values
              .map(
                (e) => Tab(
                  text: e.label,
                ),
              )
              .toList(),
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
