import 'package:alura_patters/discounts/discount.dart';
import 'package:alura_patters/models/budget.dart';

class NoDiscount extends Discount {
  NoDiscount();

  @override
  int calculate(Budget budget) => 0;
}
