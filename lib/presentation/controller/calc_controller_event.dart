part of 'calc_controller_bloc.dart';

@immutable
sealed class CalcControllerEvent extends Equatable {
  const CalcControllerEvent();
}

final class AddOperationSign extends CalcControllerEvent {
  final CalcOperationSign calcSign;

  const AddOperationSign({required this.calcSign});

  @override
  List<Object?> get props => [calcSign];
}

final class AddDoubleSign extends CalcControllerEvent {
  const AddDoubleSign();

  @override
  List<Object?> get props => [];
}

final class DeleteOneSymbol extends CalcControllerEvent {
  const DeleteOneSymbol();

  @override
  List<Object?> get props => [];
}

final class DeleteExpression extends CalcControllerEvent {
  const DeleteExpression();

  @override
  List<Object?> get props => [];
}

final class AddParenthesis extends CalcControllerEvent {
  final CalcSign calcSign;

  const AddParenthesis({required this.calcSign});

  @override
  List<Object?> get props => [calcSign];
}

final class AddNumberSign extends CalcControllerEvent {
  final CalcNumberSign calcSign;

  const AddNumberSign({required this.calcSign});

  @override
  List<Object?> get props => [calcSign];
}

final class SetDisplayableExpression extends CalcControllerEvent {
  final String expr;

  const SetDisplayableExpression({required this.expr});

  @override
  List<Object?> get props => [expr];
}
