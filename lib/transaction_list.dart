import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

 final List<Transcation> transactions;

  const TransactionList( this.transactions) : super();

  @override
  Widget build(BuildContext context) {
    return   Container(
              width: double.infinity,
              height: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                    return Card(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Text(
                            "\$ ${transactions[index].amount.toStringAsFixed(2)}",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple, width: 2)),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transactions[index].title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), 
                            Text(
                              DateFormat.yMMMMd().format(transactions[index].date),style: TextStyle(fontSize: 13, color: Colors.grey))
                            ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: transactions.length,
              ),
            );
  }
}