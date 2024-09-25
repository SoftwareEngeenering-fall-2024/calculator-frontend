part of 'history_bloc.dart';

@immutable
sealed class HistoryState extends Equatable {
  const HistoryState();
}

final class HistoryInitial extends HistoryState {
  @override
  List<Object> get props => [];
}

final class HistoryInProgressState extends HistoryState {
  const HistoryInProgressState();

  @override
  List<Object?> get props => [];
}

final class HistoryWorkedState extends HistoryState {
  const HistoryWorkedState({required this.histories});

  final List<HistoryEntity> histories;

  @override
  List<Object?> get props => [histories];
}
