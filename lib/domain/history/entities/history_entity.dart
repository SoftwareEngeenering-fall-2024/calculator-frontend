import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_entity.freezed.dart';

@freezed
class HistoryEntity with _$HistoryEntity{
  const factory HistoryEntity({
    required String expr,
    required String result,
  }) = _HistoryEntity;
}
