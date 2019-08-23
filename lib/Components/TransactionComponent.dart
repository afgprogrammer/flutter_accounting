import 'package:flutter/material.dart';
import 'package:flutter_accounting/Models/TransactionModel.dart';

class TransactionComponent extends StatefulWidget {

  final TransactionModel data;

  TransactionComponent({this.data}) : super();

  @override
  _TransactionComponentState createState() => _TransactionComponentState();
}

class _TransactionComponentState extends State<TransactionComponent> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              widget.data.type == "-" 
              ? Icon(
                Icons.arrow_upward, 
                color: Colors.red,
              ) : Icon(
                Icons.arrow_downward, 
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(widget.data.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(widget.data.type, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
              Text(widget.data.price.toString(), style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),),
              Text(" AF", style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
        ],
      ),
    );
  }
}