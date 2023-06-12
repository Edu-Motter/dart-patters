import 'package:alura_patters/discounts/discount_calculator.dart';
import 'package:alura_patters/models/budget.dart';
import 'package:test/test.dart';

void main() {
  test('if itemsQuantity > 5 them it will has 5% of discount', () {
    final DiscountCalculator discountCalculator = DiscountCalculator();

    final Budget budgetWithSixItems = Budget(
      valueInCents: 50000,
      itemsQuantity: 6,
    );
    final Budget budgetWithFourItems = Budget(
      valueInCents: 50000,
      itemsQuantity: 4,
    );

    int discountValue = discountCalculator.calculate(budgetWithSixItems);
    assert(discountValue == 2500);
    discountValue = discountCalculator.calculate(budgetWithFourItems);
    assert(discountValue == 0);
  });

  test('if budget value > 500.00 them it will has 10% of discount', () {
    final DiscountCalculator discountCalculator = DiscountCalculator();

    final Budget budgetWithValue510 = Budget(
      valueInCents: 51000,
      itemsQuantity: 1,
    );
    final Budget budgetWithValue499 = Budget(
      valueInCents: 49999,
      itemsQuantity: 1,
    );

    int discountValue = discountCalculator.calculate(budgetWithValue510);
    assert(discountValue == 5100);
    discountValue = discountCalculator.calculate(budgetWithValue499);
    assert(discountValue == 0);
  });
}
