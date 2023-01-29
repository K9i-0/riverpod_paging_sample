import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_name_generator/random_name_generator.dart';
import 'package:riverpod_paging_sample/example/sample/sample_item.dart';
import 'package:riverpod_paging_sample/example/settings/settings_notifier.dart';

final sampleRepositoryProvider = Provider.autoDispose<SampleRepository>(
  (ref) => SampleRepository(ref),
);

/// テスト用のダミーデータを返すRepository
class SampleRepository {
  final Ref ref;
  const SampleRepository(this.ref);

  Future<SamplePageResult> getByPage({
    int page = 1,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (ref.read(settingsNotifierProvider).forceFirstPageError && page == 1) {
      throw Exception('1ページ目強制エラー');
    }
    if (ref.read(settingsNotifierProvider).forceNextPageError && page > 1) {
      throw Exception('2ページ目以降強制エラー');
    }

    final items = _db.sublist((page - 1) * 30, page * 30);
    return SamplePageResult(
      items: items //
          .map(
            (record) => SampleItem(
              id: record.id.toString(),
              name: record.name,
            ),
          )
          .toList(),
      hasMore: _db.length > page * 30,
    );
  }

  Future<SampleOffsetResult> getByOffset({
    int offset = 0,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (ref.read(settingsNotifierProvider).forceFirstPageError && offset == 0) {
      throw Exception('1ページ目強制エラー');
    }
    if (ref.read(settingsNotifierProvider).forceNextPageError && offset > 0) {
      throw Exception('2ページ目以降強制エラー');
    }

    final items = _db.sublist(offset, offset + 50);

    return SampleOffsetResult(
      items: items //
          .map(
            (record) => SampleItem(
              id: record.id.toString(),
              name: record.name,
            ),
          )
          .toList(),
      hasMore: _db.length > offset + 50,
    );
  }

  Future<SampleCursorResult> getByCursor({
    String? nextCursor,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (ref.read(settingsNotifierProvider).forceFirstPageError &&
        nextCursor == null) {
      throw Exception('1ページ目強制エラー');
    }
    if (ref.read(settingsNotifierProvider).forceNextPageError &&
        nextCursor != null) {
      throw Exception('2ページ目以降強制エラー');
    }

    final items = _db.sublist(
        int.parse(nextCursor ?? '0'), int.parse(nextCursor ?? '0') + 50);
    final newNextCursor = (int.parse(nextCursor ?? '0') + 50).toString();
    final exist = _db.length > int.parse(newNextCursor);

    return SampleCursorResult(
      items: items //
          .map(
            (record) => SampleItem(
              id: record.id.toString(),
              name: record.name,
            ),
          )
          .toList(),
      nextCursor: exist ? newNextCursor : null,
    );
  }
}

class SamplePageResult {
  const SamplePageResult({
    required this.items,
    required this.hasMore,
  });

  final List<SampleItem> items;
  final bool hasMore;
}

class SampleOffsetResult {
  const SampleOffsetResult({
    required this.items,
    required this.hasMore,
  });

  final List<SampleItem> items;
  final bool hasMore;
}

class SampleCursorResult {
  const SampleCursorResult({
    required this.items,
    required this.nextCursor,
  });

  final List<SampleItem> items;
  final String? nextCursor;
}

class _Record {
  const _Record({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}

final _randomNames = RandomNames(Zone.us);

final _db = List.generate(
  150,
  (index) => _Record(
    id: index + 1,
    name: _randomNames.fullName(),
  ),
);
