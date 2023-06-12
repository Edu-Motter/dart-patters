import 'package:alura_patters/models/budget.dart';

abstract class Discount {
  Discount? next;

  Discount({this.next});

  int calculate(Budget budget);
}
