import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/ActionButtonComponent.dart';
import 'package:flutter_accounting/Components/AppBarComponent.dart';
import 'package:flutter_accounting/Components/CardListComponent.dart';
import 'package:flutter_accounting/Components/TransactionComponent.dart';
import 'package:flutter_accounting/Models/TransactionModel.dart';
import 'package:flutter_accounting/Pages/AddCardPage.dart';
import 'package:flutter_accounting/Providers/CardProvider.dart';
import 'package:flutter_accounting/Styles/MainStyles.dart';
import 'package:flutter_accounting/Styles/TextStyles.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider<CardProvider>(
    builder: (context) => CardProvider(),
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
      home: HomePage(),
    )
  ),
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainStyles.bodyColor,
      appBar: AppBarComponent.getAppBar("Wallet", null, 
        IconButton(
          icon: Icon(
            Icons.add, 
            color: MainStyles.brandGray,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddCardPage()));
          },
        ),
      ),
      floatingActionButton: ActionButtonComponent(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              (Provider.of<CardProvider>(context).getCardLength() > 0 ? 
              Container(
                height: 210,
                child: Consumer<CardProvider>(
                  builder: (context, cards, child) => CardListComponent(
                    cards: cards.allCards,
                  ),
                ),        
              ) 
              : Container(
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Add your new card click the \n + \n button in the top right.", textAlign: TextAlign.center, 
                  style: TextStyle(color: Colors.white, fontSize: 20.0, ),),
                )
              )), 
              SizedBox(
                height: 30,
              ),
              Text("Last Transactions", style: TextStyles.headingTitle),
              SizedBox(
                height: 10,
              ),
              Expanded(                  
                child: ListView(
                  children: <Widget>[
                    TransactionComponent(data: new TransactionModel(name: 'Shoping', price: 2000, type: '-'),),
                    TransactionComponent(data: new TransactionModel(name: 'Book', price: 300, type: '-'),),
                    TransactionComponent(data: new TransactionModel(name: 'Sallery', price: 11200, type: '+'),),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
