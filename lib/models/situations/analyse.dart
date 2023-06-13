import 'package:alura_patters/models/situations/approve.dart';

import '../budget.dart';
import 'budget_situation.dart';
import 'reprove.dart';

class Analyse extends BudgetSituation {
  @override
  int calculateDiscount(Budget budget) => (budget.valueInCents * 0.05).round();

  @override
  void approve(Budget budget) => budget.situation = Approve();

  @override
  void reprove(Budget budget) => budget.situation = Reprove();
}
