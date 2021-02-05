import 'dart:collection';

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'Product.dart';

class Cart with ChangeNotifier {
  // A kosár tartalma
  List<Product> _items = [];

  // Egy olyan listát ad eredményül, ami kívülről nem módosítható.
  // Emiatt a list csak az add() metóduson keresztül lesz bővíthető.
  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  // Új pizza hozzáadása a kosárhoz
  void add(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Product item) {
    _items.remove(item);
    notifyListeners();
  }

  double get total =>
      _items.fold(0, (amount, item) => item.price + amount);

}