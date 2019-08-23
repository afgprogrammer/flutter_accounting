import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/ActionButtonComponent.dart';
import 'package:flutter_accounting/Components/AppBarComponent.dart';
import 'package:flutter_accounting/Components/CardViewComponent.dart';
import 'package:flutter_accounting/Components/TransactionComponent.dart';
import 'package:flutter_accounting/Models/CardModel.dart';
import 'package:flutter_accounting/Models/TransactionModel.dart';
import 'package:flutter_accounting/Pages/AddCardPage.dart';
import 'package:flutter_accounting/Styles/MainStyles.dart';
import 'package:flutter_accounting/Styles/TextStyles.dart';

void main() => runApp(
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData(fontFamily: 'OpenSans'),
    home: new HomePage(),
  ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainStyles.bodyColor,
      appBar: AppBarComponent.getAppBar("Wallet", null),
      floatingActionButton: ActionButtonComponent(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardViewComponent(CardModel(name: "MasterCard", bank: "Azizi", number: "1111 **** **** 1111", currency: "AF", available: 10000, color: Color.fromRGBO(27, 31, 51, 1))),
                    AspectRatio(
                      aspectRatio: 1 / 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return AddCardPage();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(173, 209, 234, 1)
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      )
                    )
                  ],
                ),
              ),
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
