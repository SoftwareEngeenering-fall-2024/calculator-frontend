import 'package:calculator_frontend/domain/history/usecases/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HistoryBloc, HistoryState>(
        bloc: context.read<HistoryBloc>(),
        builder: (context, state) {
          if (state is HistoryWorkedState) {
            return ListView.builder(
              itemCount: state.histories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                      "${state.histories[index].expr} = ${state.histories[index].result}",),
                );
              },
            );
          }
          return const Align(
            alignment: Alignment.topCenter,
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
