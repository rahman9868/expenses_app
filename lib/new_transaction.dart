import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransx;

  NewTransaction(this.addNewTransx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }

    widget.addNewTransx(titleController.text, double.parse(amountController.text));

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return 
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titleController,
                      onSubmitted: (_) => submitData(),
                      // onChanged: (value){
                      //   titleInput = value;
                      //  },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => submitData(),
                      // onChanged: (value) {
                      //   amountInput = value;
                      // },
                      ),
                    FlatButton(
                      child: Text("Add Transaction", style: TextStyle(color: Colors.cyan)),
                      onPressed: submitData
                    )
                  ],
                ),
              ),
            );
  }
}