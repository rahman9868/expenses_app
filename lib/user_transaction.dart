import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';
import 'models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
   final List<Transcation> _userTransaction = [
    Transcation(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()
        ),
    Transcation(
      id: "t2",title: "Weekly Groceries",amount: 66.53,date: DateTime.now()
      )
  ];

  void _addNewTransaction(String titlex, double amountx){
    final newTx = Transcation(title: titlex, amount: amountx, date: DateTime.now(),id: DateTime.now().toString() );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}