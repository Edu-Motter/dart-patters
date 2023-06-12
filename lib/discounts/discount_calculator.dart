import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/discounts/no_discount.dart';
import 'package:alura_patters/discounts/quantity_discount.dart';
import 'package:alura_patters/discounts/value_discount.dart';
import 'package:alura_patters/models/budget.dart';

class DiscountCalculator {
  int calculate(Budget budget) {
    Discount discount = ValueDiscount(
      next: QuantityDiscount(
        next: NoDiscount(),
      ),
    );

    return discount.calculate(budget);
  }
}
