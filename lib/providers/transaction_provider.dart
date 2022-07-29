import 'dart:async';

import 'package:Koskuappfront/models/models.dart';
import 'package:Koskuappfront/services/transaction_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> _transactions = [];
  List<Transaction> get transactions => _transactions;

  set transactions(List<Transaction> transactions) {
    _transactions = transactions;
    notifyListeners();
  }

  Future<void> getTransaction() async {
    try {
      List<Transaction> transactions =
          await TransactionService().getTransaction();
      _transactions = transactions;
    } catch (e) {
      print(e);
    }
  }
}
