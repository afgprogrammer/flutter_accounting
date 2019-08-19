import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/AppBarComponent.dart';
import 'package:flutter_accounting/Components/CardViewComponent.dart';
import 'package:flutter_accounting/Models/CardModel.dart';
import 'package:flutter_accounting/Styles/MainStyles.dart';

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
      appBar: AppBarComponent.getAppBar("Wallet"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: <Widget>[
              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardViewComponent(CardModel(name: "MasterCard", bank: "Azizi", number: "1111 **** **** 1111", currency: "AF", available: 10000, color: Color.fromRGBO(27, 31, 51, 1)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
