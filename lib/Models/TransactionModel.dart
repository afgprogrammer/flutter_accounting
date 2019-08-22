import 'package:flutter/widgets.dart';

class TransactionModel {
  final int id;
  final String name;
  final int price;
  final String type;

  TransactionModel({this.id, @required this.name, @required this.price, @required this.type});

  TransactionModel.fromJson(Map<String,  dynamic> json) :
    id = json['id'],
    name = json['name'],
    price = json['price'],
    type = json['type'];
}