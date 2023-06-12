import 'package:alura_patters/models/budget.dart';

abstract class Tax {
  int calculate(Budget budget);
}
