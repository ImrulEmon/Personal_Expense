import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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
      amount: 80.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'New Glass',
      amount: 95.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'New Phone',
      amount: 33.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'New Neckband',
      amount: 25.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'New Car',
      amount: 56.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'New Suit',
      amount: 195.01,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(
          transactions: _userTransactions,
        )
      ],
    );
  }
}
