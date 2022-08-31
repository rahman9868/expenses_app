import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/new_transaction.dart';
import 'models/transaction.dart';
import 'transaction_list.dart';

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

class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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

  // String titleInput ;
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void _startAddNewTranscation(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_) {
      return NewTransaction(_addNewTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          actions: [
            IconButton(
              onPressed:() => _startAddNewTranscation(context),
              icon: Icon(Icons.add)
            )
          ],
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
              TransactionList(_userTransaction)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewTranscation(context),
          ),
        );
  }
}
