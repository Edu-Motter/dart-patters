import 'package:alura_patters/models/situations/budget_situation.dart';

import '../budget.dart';
import 'finish.dart';

class Approve extends BudgetSituation {
  @override
  int calculateDiscount(Budget budget) => (budget.valueInCents * 0.025).round();

  @override
  void finish(Budget budget) => budget.situation = Finish();
}
