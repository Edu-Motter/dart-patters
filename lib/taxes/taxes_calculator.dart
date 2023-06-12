import 'package:alura_patters/models/budget.dart';
import 'package:alura_patters/taxes/tax.dart';

class TaxesCalculator {
  int calculate(Budget budget, Tax tax) => tax.calculate(budget);
}
