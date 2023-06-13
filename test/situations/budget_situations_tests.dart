import 'package:alura_patters/models/budget.dart';
import 'package:alura_patters/models/situations/analyse.dart';
import 'package:alura_patters/models/situations/approve.dart';
import 'package:alura_patters/models/situations/budget_situation.dart';
import 'package:alura_patters/models/situations/finish.dart';
import 'package:test/test.dart';

void main() {
  test('taxes calculator type = ISS must return 6% of the value', () {
    int budgetInitialValue = 10000;
    Budget budget = Budget(valueInCents: budgetInitialValue, itemsQuantity: 1);
    assert(budget.situation is Analyse);
    int discountInCents = budget.situation.calculateDiscount(budget);
    budget.giveExtraDiscount();
    int budgetValueWithDiscount = budgetInitialValue - discountInCents;
    assert(budget.valueInCents == budgetValueWithDiscount);

    budget.approve();
    assert(budget.situation is Approve);

    budget.finish();
    assert(budget.situation is Finish);

    budget.giveExtraDiscount();
    assert(budget.valueInCents == budgetValueWithDiscount);

    expect(() => budget.reprove(), throwsA(TypeMatcher<DomainException>()));
  });
}
