import 'package:calculator_frontend/presentation/calc_sign.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/history/entities/history_entity.dart';

class HistoryListConverter
    implements JsonConverter<List<HistoryEntity>, List<dynamic>> {
  const HistoryListConverter();

  @override
  List<HistoryEntity> fromJson(List<dynamic> json) =>
      List.generate(json.length, (ind) {
        final entity = json[ind] as Map<String, dynamic>;
        print(entity["expression"]! as String);
        return HistoryEntity(
          expr: (entity["expression"]! as String).split(
            CalcOperationSign.multiply.exprSymbol,).join(
            CalcOperationSign.multiply.displaySymbol,).split(
            CalcOperationSign.division.exprSymbol,).join(
            CalcOperationSign.division.displaySymbol,).split(
            CalcOperationSign.sum.exprSymbol,).join(
            CalcOperationSign.sum.displaySymbol,).split(
            CalcSigns.doubleSign.displaySymbol,).join(
            CalcSigns.doubleSign.exprSymbol,),
          result: entity["result"]! as String,
        );
      });

  @override
  List<dynamic> toJson(List<HistoryEntity> object) =>
      List.generate(object.length, (ind) {
        return {"expression": object[ind].expr,
          "result": object[ind].result,};
      });
}
