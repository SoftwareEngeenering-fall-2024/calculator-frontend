import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calc_sign.dart';

part 'calc_controller_event.dart';

part 'calc_controller_state.dart';

class CalcControllerBloc
    extends Bloc<CalcControllerEvent, CalcControllerState> {
  CalcControllerBloc()
      : super(
          const CalcControllerWorkedState(
            expression: "",
          ),
        ) {
    on<CalcControllerEvent>(
      (event, emit) => switch (event) {
        AddOperationSign() => _addCalcSign(event, emit),
        AddDoubleSign() => _addDoubleSign(event, emit),
        DeleteOneSymbol() => _deleteOneSymbol(event, emit),
        DeleteExpression() => _deleteExpression(event, emit),
        AddNumberSign() => _addNumberSign(event, emit),
        AddParenthesis() => _addParenthesis(event, emit),
        SetResultExpression() => _setResultExpression(event, emit),
      },
    );
  }

  final opSigns = [for (var v in CalcOperationSign.values) v.displaySymbol];

  void _addCalcSign(AddOperationSign event, Emitter<CalcControllerState> emit) {
    final curStateExpr = state.isResult ? '' : state.expression;
    if (curStateExpr.isNotEmpty && opSigns.contains(curStateExpr[curStateExpr.length - 1])) {
      emit(
        CalcControllerWorkedState(
          expression:
              curStateExpr.substring(0, curStateExpr.length - 1) +
                  event.calcSign.displaySymbol,
        ),
      );
    } else {
      emit(
        CalcControllerWorkedState(
          expression: curStateExpr + event.calcSign.displaySymbol,
        ),
      );
    }
  }

  int _lastNumBegin(String expression) {
    int lastSign = -1;
    for (var sign in [
      ...opSigns,
      CalcSigns.rightParenthesis.displaySymbol,
      CalcSigns.leftParenthesis.displaySymbol
    ]) {
      lastSign = lastSign < expression.lastIndexOf(sign)
          ? expression.lastIndexOf(sign)
          : lastSign;
    }
    return lastSign + 1;
  }

  void _addDoubleSign(
    AddDoubleSign event,
    Emitter<CalcControllerState> emit,
  ) {
    final curStateExpr = state.isResult ? '' : state.expression;
    final lastNumBegin = _lastNumBegin(curStateExpr);
    if (state.expression.length - lastNumBegin > 8 ||
        state.expression.length - lastNumBegin < 1) {
      return;
    }
    if (!curStateExpr
        .substring(lastNumBegin)
        .contains(CalcSigns.doubleSign.displaySymbol)) {
      emit(
        CalcControllerWorkedState(
          expression: curStateExpr + CalcSigns.doubleSign.displaySymbol,
        ),
      );
    }
  }

  void _deleteOneSymbol(
    DeleteOneSymbol event,
    Emitter<CalcControllerState> emit,
  ) {
    final curStateExpr = state.isResult ? '' : state.expression;
    if (curStateExpr.isNotEmpty) {
      emit(
        CalcControllerWorkedState(
          expression:
          curStateExpr.substring(0, curStateExpr.length - 1),
        ),
      );
    }
  }

  void _deleteExpression(
    DeleteExpression event,
    Emitter<CalcControllerState> emit,
  ) {
    emit(
      const CalcControllerWorkedState(
        expression: "",
      ),
    );
  }

  void _addNumberSign(
    AddNumberSign event,
    Emitter<CalcControllerState> emit,
  ) {
    final curStateExpr = state.isResult ? '' : state.expression;
    final lastNumBegin = _lastNumBegin(curStateExpr);
    if (state.expression.length - lastNumBegin > 8) {
      return;
    }
    if (event.calcSign != CalcNumberSign.zero) {
      if (!curStateExpr
          .substring(lastNumBegin)
          .contains(CalcSigns.doubleSign.displaySymbol) && curStateExpr.length - 1 == lastNumBegin && curStateExpr[curStateExpr.length - 1] == CalcNumberSign.zero.displaySymbol) {
        emit(
          CalcControllerWorkedState(expression: curStateExpr.substring(0, curStateExpr.length - 1) + event.calcSign.displaySymbol),
        );
      } else {
        emit(
          CalcControllerWorkedState(
              expression: curStateExpr + event.calcSign.displaySymbol),
        );
      }
    } else {
      if (!curStateExpr
          .substring(lastNumBegin)
          .contains(CalcSigns.doubleSign.displaySymbol) && curStateExpr.length - 1 == lastNumBegin && curStateExpr[curStateExpr.length - 1] == CalcNumberSign.zero.displaySymbol) {
        return;
      } else {
        emit(
          CalcControllerWorkedState(expression: curStateExpr + event.calcSign.displaySymbol),
        );
      }
    }
  }

  void _addParenthesis(AddParenthesis event, Emitter<CalcControllerState> emit) {
    final curStateExpr = state.isResult ? '' : state.expression;
    emit(
      CalcControllerWorkedState(expression: curStateExpr + event.calcSign.displaySymbol),
    );
  }

  void _setResultExpression(SetResultExpression event, Emitter<CalcControllerState> emit) {
    emit(
      CalcControllerWorkedState(expression: event.expr, isResult: true),
    );
  }
}
