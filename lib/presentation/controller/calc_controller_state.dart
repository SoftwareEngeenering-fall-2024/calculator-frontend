part of 'calc_controller_bloc.dart';

@immutable
sealed class CalcControllerState extends Equatable {
  const CalcControllerState();

  abstract final String expression;
}


final class CalcControllerWorkedState extends CalcControllerState {
  const CalcControllerWorkedState({required this.expression});

  @override
  List<Object> get props => [expression,];

  @override
  final String expression;
}