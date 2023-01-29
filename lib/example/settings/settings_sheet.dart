import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/example/settings/settings_notifier.dart';

class SettingsSheet extends HookConsumerWidget {
  const SettingsSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                '設定',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.all(16),
                icon: const Icon(
                  Icons.close,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('1ページ目強制エラー'),
            value: ref.watch(settingsNotifierProvider
                .select((value) => value.forceFirstPageError)),
            onChanged: (value) {
              ref
                  .read(settingsNotifierProvider.notifier)
                  .toggleForceFirstPageError();
            },
          ),
          SwitchListTile(
            title: const Text('2ページ目以降強制エラー'),
            value: ref.watch(settingsNotifierProvider
                .select((value) => value.forceNextPageError)),
            onChanged: (value) {
              ref
                  .read(settingsNotifierProvider.notifier)
                  .toggleForceNextPageError();
            },
          ),
        ],
      ),
    );
  }
}
