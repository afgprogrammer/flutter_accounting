import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CardModel {

  final int id;
  final String name;
  final String bank;
  final String number;
  final String currency;

  // Available balance in this card
  final int available;

  // The card color in the app
  final Color color;

  CardModel({this.id, this.color, @required this.name, @required this.number, @required this.bank, @required this.currency, @required this.available});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      id: json['id'],
      name: json['name'], 
      number: json['number'], 
      bank: json['bank'],
      currency: json['currency'],
      available: json['available']  
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
      map['id'] = id;
      map['name'] = name;
      map['number'] = number;
      map['bank'] = bank;
      map['currency'] = currency;
      map['available'] = available;
    
    return map;
  }
}