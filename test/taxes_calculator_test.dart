import 'package:alura_patters/models/budget.dart';
import 'package:alura_patters/taxes/icms_tax.dart';
import 'package:alura_patters/taxes/iss_tax.dart';
import 'package:alura_patters/taxes/taxes_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('taxes calculator type = ISS must return 6% of the value', () {
    Budget budget = Budget(valueInCents: 10000);
    TaxesCalculator calculator = TaxesCalculator();
    final int tax = calculator.calculate(budget, IssTax());
    assert(tax == 600);
  });

  test('taxes calculator type = ICMS must return 10% of the value', () {
    Budget budget = Budget(valueInCents: 10000);
    TaxesCalculator calculator = TaxesCalculator();
    final int tax = calculator.calculate(budget, IcmsTax());
    assert(tax == 1000);
  });
}
