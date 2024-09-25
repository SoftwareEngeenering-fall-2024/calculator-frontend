part of 'calculation_bloc.dart';

@immutable
sealed class CalculationEvent extends Equatable {
  const CalculationEvent();
}

final class CalculateExpression extends CalculationEvent {
  final String expression;

  const CalculateExpression({required this.expression});

  @override
  List<Object?> get props => [expression];
}