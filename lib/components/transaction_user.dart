import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class transactionUser extends StatefulWidget {
  const transactionUser({super.key});

  @override
  State<transactionUser> createState() => _transactionUserState();
}

class _transactionUserState extends State<transactionUser> {
  final _transactions = [
    Transaction(
        id:'t1',
        title: 'Tenis Oakley',
        value: 700.50,
        date: DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Relógio Chilly Beans',
        value: 850.00,
        date: DateTime.now()
    ),
    Transaction(
        id: 't3',
        title: 'Agasalho Adidas Farm',
        value: 859.75,
        date: DateTime.now()
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        TransactionList(transactions: _transactions),
        TransactionForm(),
      ],
    );
  }
}
