import 'package:flutter/material.dart';
import 'package:flutter_accounting/Database/moor_database.dart';
import 'package:flutter_accounting/Models/CardModel.dart';

class CardViewComponent extends StatefulWidget {
  final BankCard card;

  CardViewComponent(this.card) : super();
  
  @override
  _CardViewComponentState createState() => _CardViewComponentState();
}

class _CardViewComponentState extends State<CardViewComponent> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.1 / 2,
      child: GestureDetector(
        onTap: () {
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                            color: Colors.red.withOpacity(.8),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-15, 0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.orange.withOpacity(.8),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(widget.card.available.toString(), style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                        Text(widget.card.currency, style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(widget.card.name, style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Text(widget.card.number, style: TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 10, fontWeight: FontWeight.w900),),
                    )
                  ]
                ),
              ]
            ),
          )
        ),
      )
    );
  }
}
