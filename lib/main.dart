import 'package:flutter/material.dart';
import 'package:flutter_accounting/Components/AppBarComponent.dart';
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
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
