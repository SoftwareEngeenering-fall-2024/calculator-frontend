import 'package:calculator_frontend/domain/history/usecases/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../config/style/colors.dart' as colors;

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HistoryBloc, HistoryState>(
        bloc: context.read<HistoryBloc>(),
        builder: (context, state) {
          if (state is HistoryWorkedState) {
            return ListView.separated(
              itemCount: state.histories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                      "${state.histories[state.histories.length - 1 - index].expr} = ${state.histories[state.histories.length - 1 - index].result}",
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: colors.grey, indent: 8, endIndent: 8,);
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
