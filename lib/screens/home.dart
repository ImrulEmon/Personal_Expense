import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Home extends StatelessWidget {
  //const Home({super.key});

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 70.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Watch',
      amount: 75.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Jacket',
      amount: 80.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'New Glass',
      amount: 95.01,
      date: DateTime.now(),
    ),
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Expense'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100.0,
            width: double.infinity,
            child: Card(
              color: Colors.blue[300],
              child: Text(
                'CHART !',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
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
                      // print('$titleInput | $amountInput');
                      print(
                          '${amountController.text} | ${titleController.text}');
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
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2.0),
                      ),
                      child: Text(
                        '\$${tx.amount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
