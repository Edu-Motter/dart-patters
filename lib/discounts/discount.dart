import 'package:alura_patters/models/budget.dart';

abstract class Discount {
  Discount? next;

  Discount({this.next});

  int calculate(Budget budget) {
    if (willApplyDiscount(budget)) {
      return calculateDiscount(budget);
    }

    return next!.calculate(budget);
  }

  bool willApplyDiscount(Budget budget);

  int calculateDiscount(Budget budget);
}
