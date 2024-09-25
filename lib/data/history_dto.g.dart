// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryDtoImpl _$$HistoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$HistoryDtoImpl(
      history: const HistoryListConverter().fromJson(json['history'] as List),
    );

Map<String, dynamic> _$$HistoryDtoImplToJson(_$HistoryDtoImpl instance) =>
    <String, dynamic>{
      'history': const HistoryListConverter().toJson(instance.history),
    };
