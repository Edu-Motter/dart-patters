class Budget {
  final int _value;
  final int _itemsQuantity;

  Budget({
    required int valueInCents,
    required int itemsQuantity,
  })  : _value = valueInCents,
        _itemsQuantity = itemsQuantity;

  int get valueInCents => _value;
  int get itemsQuantity => _itemsQuantity;
}
