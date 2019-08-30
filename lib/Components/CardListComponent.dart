import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/CardViewComponent.dart';
import 'package:flutter_accounting/Models/CardModel.dart';

class CardListComponent extends StatelessWidget {
  final List<CardModel> cards;

  CardListComponent({@required this.cards});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getChildrenCards(),
    );
  }

  List<Widget> getChildrenCards() {
    return cards.map((card) => CardViewComponent(card)).toList();
  }
}