import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class QuantityDiscount extends Discount {
  QuantityDiscount({required super.next}) {
    assert(super.next != null);
  }

  @override
  int calculateDiscount(Budget budget) => (budget.valueInCents * 0.05).round();

  @override
  bool willApplyDiscount(Budget budget) => budget.itemsQuantity > 5;
}
