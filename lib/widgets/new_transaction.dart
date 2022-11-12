import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({Key key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;
  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            TextButton(
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
                // print('$titleInput | $amountInput');
                print('${amountController.text} | ${titleController.text}');
                amountController.clear();
                titleController.clear();
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
