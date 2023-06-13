import '../budget.dart';

abstract class BudgetSituation {
  int calculateDiscount(Budget budget) => 0;

  void approve(Budget budget) =>
      throw DomainException('Não é possível aprovar na atual situação');

  void reprove(Budget budget) =>
      throw DomainException('Não é possível reprovar na atual situação');

  void finish(Budget budget) =>
      throw DomainException('Não é possível finalizar na atual situação');
}

class DomainException implements Exception {
  DomainException(this.message);

  final String message;

  @override
  String toString() {
    return '$DomainException: $message';
  }
}
