import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/CardViewComponent.dart';
import 'package:flutter_accounting/Database/moor_database.dart';
import 'package:flutter_accounting/Models/CardModel.dart';
import 'package:provider/provider.dart';

class CardListComponent extends StatelessWidget {
  final Stream<List<BankCard>> cards;

  CardListComponent({@required this.cards});

  @override
  Widget build(BuildContext context) {
    return  getChildrenCards(context);
  }

  // List<Widget> getChildrenCards() {
  //   return cards.map((card) => CardViewComponent(card)).toList();
  // }

  StreamBuilder<List<BankCard>> getChildrenCards(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.getAllCards(),
      builder: (context, AsyncSnapshot<List<BankCard>> snapshot) {
        final tasks = snapshot.data ?? List();

        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (_, index) {
            final itemTask = tasks[index];
            return CardViewComponent(itemTask);
          },
        );
      },
    );
  }
}