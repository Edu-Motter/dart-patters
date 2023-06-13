import 'package:alura_patters/models/situations/analyse.dart';

import 'situations/budget_situation.dart';

class Budget {
  int _value;
  final int _itemsQuantity;
  BudgetSituation situation;

  Budget({
    required int valueInCents,
    required int itemsQuantity,
  })  : _value = valueInCents,
        _itemsQuantity = itemsQuantity,
        situation = Analyse();

  int get valueInCents => _value;
  int get itemsQuantity => _itemsQuantity;

  void giveExtraDiscount() {
    final int discount = situation.calculateDiscount(this);
    _value = _value - discount;
  }

  void approve() => situation.approve(this);

  void reprove() => situation.reprove(this);

  void finish() => situation.finish(this);
}
