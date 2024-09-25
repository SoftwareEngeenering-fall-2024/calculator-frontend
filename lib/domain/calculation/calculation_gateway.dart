abstract interface class CalculationGateway {
  Future<String> calculate(String expression);
}