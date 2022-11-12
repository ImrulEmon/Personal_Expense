import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:personal_expense/widgets/user_transactions.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

class Home extends StatelessWidget {
  //const Home({super.key});

  // String titleInput;
  // String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Expense'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
