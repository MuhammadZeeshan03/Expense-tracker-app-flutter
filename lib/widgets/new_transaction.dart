import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addtx;
  NewTransaction(this.addtx);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            ElevatedButton(
                onPressed: () {
                  addtx(titleController.text,
                      double.parse(amountController.text));
                },
                child: Text('Add Transaction'))
          ],
        ),
      ),
    );
  }
}
