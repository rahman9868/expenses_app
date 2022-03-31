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
              child: Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Text(
                            "\$ ${tx.amount}",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple, width: 2)),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tx.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), 
                            Text(
                              DateFormat.yMMMMd().format(tx.date),style: TextStyle(fontSize: 13, color: Colors.grey))
                            ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            );
  }
}