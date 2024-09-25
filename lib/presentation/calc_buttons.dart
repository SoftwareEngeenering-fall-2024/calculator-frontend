import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/calculation/usecases/calculation_bloc.dart';
import '../domain/history/usecases/history_bloc.dart';
import 'calc_button.dart';
import 'calc_sign.dart';
import 'controller/calc_controller_bloc.dart';

class CalcButtons extends StatelessWidget {
  const CalcButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: CalcSigns.leftParenthesis.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddParenthesis(
                        calcSign: CalcSigns.leftParenthesis,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcSigns.rightParenthesis.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddParenthesis(
                        calcSign: CalcSigns.rightParenthesis,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: 'C',
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const DeleteOneSymbol(),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: 'AC',
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const DeleteExpression(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.seven.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.seven),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.eight.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.eight),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.nine.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.nine),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcOperationSign.division.displaySymbol,
                  onTap: () {
                    context
                        .read<CalcControllerBloc>()
                        .add(const AddOperationSign(
                      calcSign: CalcOperationSign.division,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.four.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.four),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.five.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.five),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.six.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.six),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcOperationSign.multiply.displaySymbol,
                  onTap: () {
                    context
                        .read<CalcControllerBloc>()
                        .add(const AddOperationSign(
                      calcSign: CalcOperationSign.multiply,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.one.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.one),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.two.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.two),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.three.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.three),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcOperationSign.diff.displaySymbol,
                  onTap: () {
                    context
                        .read<CalcControllerBloc>()
                        .add(const AddOperationSign(
                      calcSign: CalcOperationSign.diff,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: CalcSigns.doubleSign.displaySymbol,
                  onTap: () {
                    context
                        .read<CalcControllerBloc>()
                        .add(const AddDoubleSign());
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcNumberSign.zero.displaySymbol,
                  onTap: () {
                    context.read<CalcControllerBloc>().add(
                      const AddNumberSign(calcSign: CalcNumberSign.zero),
                    );
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '=',
                  onTap: () {
                    context.read<CalculationBloc>().add(
                      CalculateExpression(
                        expression: context
                            .read<CalcControllerBloc>()
                            .state
                            .expression,
                      ),
                    );
                    context.read<HistoryBloc>().add(const LoadHistory());
                  },
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: CalcOperationSign.sum.displaySymbol,
                  onTap: () {
                    context
                        .read<CalcControllerBloc>()
                        .add(const AddOperationSign(
                      calcSign: CalcOperationSign.sum,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
