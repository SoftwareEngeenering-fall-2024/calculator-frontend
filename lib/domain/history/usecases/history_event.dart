part of 'history_bloc.dart';

@immutable
sealed class HistoryEvent extends Equatable {
  const HistoryEvent();
}

final class LoadHistory extends HistoryEvent {
  const LoadHistory();

  @override
  List<Object?> get props => [];
}