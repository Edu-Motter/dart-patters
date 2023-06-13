import '../budget.dart';
import 'budget_situation.dart';
import 'finish.dart';

class Reprove extends BudgetSituation {
  @override
  void finish(Budget budget) => budget.situation = Finish();
}
