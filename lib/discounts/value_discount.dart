import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class ValueDiscount extends Discount {
  ValueDiscount({required super.next}) {
    assert(super.next != null);
  }

  @override
  int calculateDiscount(Budget budget) => (budget.valueInCents * 0.10).round();

  @override
  bool willApplyDiscount(Budget budget) => budget.valueInCents > 50000;
}
