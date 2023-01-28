// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_paging_sample/paging_data.dart';

part 'sample_item.freezed.dart';

@freezed
class SampleItem with _$SampleItem implements PagingDataItem {
  const factory SampleItem({
    required String id,
    required String name,
  }) = _SampleItem;
}

/// PagingDataItemを実装したクラス
@freezed
class SampleItemState with _$SampleItemState implements PagingDataItem {
  SampleItemState._();
  factory SampleItemState({
    // graphql_codegenで生成したクラス等を持たせる
    required SampleItem item,
  }) = _SampleItemState;

  // idを実装する
  @override
  String get id => item.id;
}
