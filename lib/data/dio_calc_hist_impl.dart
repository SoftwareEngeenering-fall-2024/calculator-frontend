import 'dart:convert';
import 'package:calculator_frontend/domain/history/entities/history_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../domain/calculation/calculation_gateway.dart';
import '../domain/history/history_gateway.dart';
import '../config/server.dart' as config;
import 'history_dto.dart';


@Singleton(as: CalculationGateway)
class DioCalculationRepository implements CalculationGateway {
  final dio = Dio(
    BaseOptions(
      baseUrl: config.serverAddress,
    ),
  );

  @override
  Future<String> calculate(String expression) async {
    try {
      final Response<String> response =
      await dio.get('/calc', queryParameters: {'expression': expression});
      if (response.statusCode == 200) return response.data ?? "";
      return "Ошибка";
    } on DioException catch (e) {
      return "Ошибка";
    }
  }
}


@Singleton(as: HistoryGateway)
class DioHistoryRepository implements HistoryGateway {
  final dio = Dio(
    BaseOptions(
      baseUrl: config.serverAddress,
    ),
  );

  @override
  Future<List<HistoryEntity>> getHistory() async {
    try {
      final Response<String> response = await dio.get('/calc/hist');
      if (response.statusCode == 200) {
        return HistoryDto.fromJson(
          jsonDecode("{\"history\":${response.data.toString()}}") as Map<String, dynamic>,)
            .history;
      }
      return [];
    } on DioException catch (e) {
      return [];
    }
  }
}
