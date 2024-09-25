import 'package:calculator_frontend/domain/history/entities/history_entity.dart';

abstract interface class HistoryGateway {
  Future<List<HistoryEntity>> getHistory();
}