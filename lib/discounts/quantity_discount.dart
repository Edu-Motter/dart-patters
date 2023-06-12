import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class QuantityDiscount extends Discount {
  QuantityDiscount({required super.next}) {
    assert(super.next != null);
  }

  @override
  int calculate(Budget budget) {
    if (budget.itemsQuantity > 5) {
      return (budget.valueInCents * 0.05).round();
    }

    return super.next!.calculate(budget);
  }
}
