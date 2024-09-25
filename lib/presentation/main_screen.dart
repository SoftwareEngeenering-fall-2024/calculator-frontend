import 'package:calculator_frontend/domain/calculation/usecases/calculation_bloc.dart';
import 'package:calculator_frontend/presentation/controller/calc_controller_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/history/usecases/history_bloc.dart';
import 'calc_buttons.dart';
import 'calc_display.dart';
import 'history_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const HistoryButton(),
        title: const Text('Калькулятор'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: BlocListener<CalculationBloc, CalculationState>(
                listener: (context, state) {
                  if (state is CalculationSuccessState) {
                    context
                        .read<CalcControllerBloc>()
                        .add(SetDisplayableExpression(expr: state.result));
                  }
                },
                child: BlocBuilder<CalcControllerBloc, CalcControllerState>(
                  bloc: context.read<CalcControllerBloc>(),
                  builder: (context, state) {
                    return CalcDisplay(text: state.expression);
                  },
                ),
              ),
            ),
            const Flexible(flex: 2, child: CalcButtons()),
          ],
        ),
      ),
      drawer: const Drawer(
        child: HistoryScreen(),
      ),
    );
  }
}

class HistoryButton extends StatelessWidget {
  const HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<HistoryBloc>().add(const LoadHistory());
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(Icons.history_outlined),
    );
  }
}
