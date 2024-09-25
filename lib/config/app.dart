import 'package:calculator_frontend/domain/history/usecases/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/calculation/usecases/calculation_bloc.dart';
import '../presentation/controller/calc_controller_bloc.dart';
import '../presentation/main_screen.dart';
import 'style/custom_theme.dart' as theme;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalcControllerBloc>(
          create: (BuildContext context) => CalcControllerBloc(),
        ),
        BlocProvider<CalculationBloc>(
          create: (BuildContext context) => CalculationBloc(),
        ),
        BlocProvider<HistoryBloc>(
          create: (BuildContext context) => HistoryBloc()..add(const LoadHistory()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.light,
        home: const MainScreen(),
      ),
    );
  }
}
