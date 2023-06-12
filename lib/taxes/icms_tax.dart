import 'package:alura_patters/models/budget.dart';
import 'package:alura_patters/taxes/tax.dart';

class IcmsTax implements Tax {
  @override
  int calculate(Budget budget) {
    return (budget.valueInCents * 0.10).round();
  }
}
