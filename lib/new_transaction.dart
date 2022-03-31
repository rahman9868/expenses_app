import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransx);

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
                      // onChanged: (value){
                      //   titleInput = value;
                      //  },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountController,
                      // onChanged: (value) {
                      //   amountInput = value;
                      // },
                      ),
                    FlatButton(child: Text("Add Transaction", style: TextStyle(color: Colors.cyan),),onPressed: () {
                      addNewTransx(titleController.text, double.parse(amountController.text));
                    })
                  ],
                ),
              ),
            );
  }
}