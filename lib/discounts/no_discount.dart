import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class NoDiscount extends Discount {
  NoDiscount();

  @override
  int calculateDiscount(Budget budget) => 0;

  @override
  bool willApplyDiscount(Budget budget) => true;
}
