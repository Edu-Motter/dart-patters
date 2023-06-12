import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class ValueDiscount extends Discount {
  ValueDiscount({required super.next}) {
    assert(super.next != null);
  }

  @override
  int calculate(Budget budget) {
    if (budget.valueInCents > 50000) {
      return (budget.valueInCents * 0.10).round();
    }

    return super.next!.calculate(budget);
  }
}
