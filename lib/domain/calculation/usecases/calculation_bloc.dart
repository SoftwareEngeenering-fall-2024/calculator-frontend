import 'package:calculator_frontend/domain/calculation/calculation_gateway.dart';
import 'package:calculator_frontend/presentation/calc_sign.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/di.dart';

part 'calculation_event.dart';

part 'calculation_state.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  final CalculationGateway _gateway = getIt<CalculationGateway>();

  CalculationBloc() : super(CalculationInitial()) {
    on<CalculationEvent>(
          (event, emit) async {
        switch (event) {
          case CalculateExpression():
            await _calculate(event, emit);
        }
      },
    );
  }

  Future<void> _calculate(CalculateExpression event,
      Emitter<CalculationState> emit) async {
    final String expr = event.expression.split(
      CalcOperationSign.multiply.displaySymbol,).join(
      CalcOperationSign.multiply.exprSymbol,).split(
      CalcOperationSign.division.displaySymbol,).join(
      CalcOperationSign.division.exprSymbol,).split(
      CalcOperationSign.sum.displaySymbol,).join(
      CalcOperationSign.sum.exprSymbol,);
    emit(const CalculationInProgressState());
    final String res = await _gateway.calculate(expr);
    emit(CalculationSuccessState(result: res));
  }

}