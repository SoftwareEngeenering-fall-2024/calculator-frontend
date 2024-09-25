part of 'calculation_bloc.dart';

@immutable
sealed class CalculationState extends Equatable {
  const CalculationState();
}

final class CalculationInitial extends CalculationState {
  @override
  List<Object> get props => [];
}

final class CalculationInProgressState extends CalculationState {
  const CalculationInProgressState();

  @override
  List<Object?> get props => [];
}

final class CalculationSuccessState extends CalculationState {
  const CalculationSuccessState({required this.result});

  final String result;

  @override
  List<Object?> get props => [result];
}

final class LocaleErrorState extends CalculationState {
  const LocaleErrorState({required this.errorMessage});

  final String errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}