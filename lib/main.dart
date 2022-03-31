import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/new_transaction.dart';
import 'package:flutter_complete_guide/user_transaction.dart';
import 'models/transaction.dart';
import 'user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput ;
  // String amountInput ;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Card(
                color: Colors.blue,
                child: Container(width: double.infinity, child: Text("Chart!")),
                elevation: 5,
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
