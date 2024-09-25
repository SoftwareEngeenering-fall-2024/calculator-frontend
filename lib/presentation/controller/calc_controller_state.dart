part of 'calc_controller_bloc.dart';

@immutable
sealed class CalcControllerState extends Equatable {
  const CalcControllerState();

  abstract final String expression;
  abstract final bool isResult;
}


final class CalcControllerWorkedState extends CalcControllerState {
  const CalcControllerWorkedState({required this.expression, this.isResult = false});

  @override
  List<Object> get props => [expression, isResult];

  @override
  final String expression;

  @override
  final bool isResult;
}