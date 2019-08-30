import 'package:flutter/material.dart';
import 'package:flutter_accounting/Styles/TextStyles.dart';

class AppBarComponent {
  static getAppBar(title, leading, actions) {
    return AppBar(
      title: Text(title, style: TextStyles.appBarStyle,),
      actions: <Widget>[
        actions
      ],
      leading: leading,
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
    );
  }
}