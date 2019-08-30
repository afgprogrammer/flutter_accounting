import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_accounting/Models/CardModel.dart';

class CardProvider with ChangeNotifier {
  final List<CardModel> card = [];

  UnmodifiableListView<CardModel> get allCards => UnmodifiableListView(card);
  
  void addCard(CardModel _card) {
    card.add(_card);

    notifyListeners();
  }

  void deleteCard(CardModel _card) {
    card.remove(_card);

    notifyListeners();
  }

  int getCardLength() {
    return card.length;
  }
}
