interface class CalcSign {
  const CalcSign({
    required this.exprSymbol,
    required this.displaySymbol,
  });

  final String exprSymbol;
  final String displaySymbol;
}

abstract final class CalcSigns {
  static const doubleSign = CalcSign(exprSymbol: '.', displaySymbol: ",");
  static const leftParenthesis = CalcSign(exprSymbol: '(', displaySymbol: '(');
  static const rightParenthesis = CalcSign(exprSymbol: ')', displaySymbol: ')');
}

enum CalcNumberSign implements CalcSign {
  zero(exprSymbol: '0', displaySymbol: '0'),
  one(exprSymbol: '1', displaySymbol: '1'),
  two(exprSymbol: '2', displaySymbol: '2'),
  three(exprSymbol: '3', displaySymbol: '3'),
  four(exprSymbol: '4', displaySymbol: '4'),
  five(exprSymbol: '5', displaySymbol: '5'),
  six(exprSymbol: '6', displaySymbol: '6'),
  seven(exprSymbol: '7', displaySymbol: '7'),
  eight(exprSymbol: '8', displaySymbol: '8'),
  nine(exprSymbol: '9', displaySymbol: '9');

  @override
  final String exprSymbol;

  @override
  final String displaySymbol;

  const CalcNumberSign({required this.exprSymbol, required this.displaySymbol});
}

enum CalcOperationSign implements CalcSign {
  sum(exprSymbol: "+", displaySymbol: "+"),
  // sum(exprSymbol: "%2B", displaySymbol: "+"),
  diff(exprSymbol: "-", displaySymbol: "-"),
  multiply(exprSymbol: "*", displaySymbol: "×"),
  division(exprSymbol: "/", displaySymbol: "÷");

  @override
  final String exprSymbol;

  @override
  final String displaySymbol;

  const CalcOperationSign(
      {required this.exprSymbol, required this.displaySymbol});

  CalcOperationSign fromExprSymbol(String symbol) {
    switch (symbol) {
      case "+":
        return CalcOperationSign.sum;
      case "-":
        return CalcOperationSign.diff;
      case "/":
        return CalcOperationSign.division;
      case "*":
        return CalcOperationSign.multiply;
      default:
        return CalcOperationSign.sum;
    }
  }
}
