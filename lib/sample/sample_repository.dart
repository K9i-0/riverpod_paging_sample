import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/sample/sample_item.dart';

final sampleRepositoryProvider = Provider.autoDispose<SampleRepository>(
  (ref) => const SampleRepository(),
);

class SampleRepository {
  const SampleRepository();

  Future<SampleResult> getByPage({
    int page = 1,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    return _db[page - 1];
  }

  Future<SampleResult> getByOffset({
    int offset = 0,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    return _db[offset ~/ 30];
  }

  Future<SampleResult> getByCursor({
    String? nextCursor,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (nextCursor == null) {
      return _db.first;
    } else {
      return _db[int.parse(nextCursor)];
    }
  }
}

class SampleResult {
  const SampleResult({
    required this.items,
    required this.nextCursor,
  });

  final List<SampleItem> items;
  final String? nextCursor;
}

final _db = [
  SampleResult(
    items: List.generate(
      30,
      (index) => SampleItem(
        id: '$index',
        name: 'name${index + 1}',
      ),
    ),
    nextCursor: '1',
  ),
  SampleResult(
    items: List.generate(
      30,
      (index) => SampleItem(
        id: '${index + 30}',
        name: 'name${index + 31}',
      ),
    ),
    nextCursor: '2',
  ),
  SampleResult(
    items: List.generate(
      30,
      (index) => SampleItem(
        id: '${index + 60}',
        name: 'name${index + 61}',
      ),
    ),
    nextCursor: '3',
  ),
  SampleResult(
    items: List.generate(
      30,
      (index) => SampleItem(
        id: '${index + 90}',
        name: 'name${index + 91}',
      ),
    ),
    nextCursor: '4',
  ),
  SampleResult(
    items: List.generate(
      30,
      (index) => SampleItem(
        id: '${index + 120}',
        name: 'name${index + 121}',
      ),
    ),
    nextCursor: null,
  ),
];
