import 'package:calculator_frontend/domain/history/entities/history_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'converter/history_list_converter.dart';

part 'history_dto.freezed.dart';
part 'history_dto.g.dart';

@freezed
class HistoryDto with _$HistoryDto {
  const factory HistoryDto({
    @HistoryListConverter()
    required List<HistoryEntity> history,
  }) = _HistoryDto;

  factory HistoryDto.fromJson(Map<String, Object?> json)
  => _$HistoryDtoFromJson(json);
}