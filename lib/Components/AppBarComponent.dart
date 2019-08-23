import 'package:flutter/material.dart';
import 'package:flutter_accounting/Styles/TextStyles.dart';

class AppBarComponent {
  static getAppBar(title, leading) {
    return AppBar(
      title: Text(title, style: TextStyles.appBarStyle,),
      actions: <Widget>[
        Icon(null),
        Icon(null),
      ],
      leading: leading,
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
    );
  }
}