import 'package:calculator_frontend/domain/history/entities/history_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/di.dart';
import '../history_gateway.dart';

part 'history_event.dart';

part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final HistoryGateway _gateway = getIt<HistoryGateway>();

  HistoryBloc() : super(HistoryInitial()) {
    on<HistoryEvent>(
          (event, emit) async {
        switch (event) {
          case LoadHistory():
            await _loadHistory(event, emit);
        }
      },
    );
  }

  Future<void> _loadHistory(LoadHistory event, Emitter<HistoryState> emit) async {
    final List<HistoryEntity> oldList = state is HistoryWorkedState ? (state as HistoryWorkedState).histories : [];
    emit(const HistoryInProgressState());
    final List<HistoryEntity> res = await _gateway.getHistory();
    emit(HistoryWorkedState(histories: res.isEmpty ? oldList : res));
  }
}