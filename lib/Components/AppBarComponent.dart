import 'package:flutter/material.dart';
import 'package:flutter_accounting/Styles/TextStyles.dart';

class AppBarComponent {
  static getAppBar(title) {
    return AppBar(
      title: Text(title, style: TextStyles.appBarStyle,),
      actions: <Widget>[
        Icon(null),
        Icon(null),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
    );
  }
}