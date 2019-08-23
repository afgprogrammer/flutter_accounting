import 'package:flutter/material.dart';
import 'package:flutter_accounting/Styles/MainStyles.dart';

class ActionButtonComponent extends StatefulWidget {

  @override
  _ActionButtonComponent createState() => _ActionButtonComponent();
}

class _ActionButtonComponent extends State<ActionButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print("Action Button");
      },
      child: Icon(Icons.plus_one),
      backgroundColor: MainStyles.floatingActionButtonBgColor,
    );
  }
}
