import 'package:flutter/material.dart';

import '../../models/expense.dart';
import '../expenses_data.dart';

class ExpenseRepositoryMock {
  Future<List<Expense>> fetchExpense() {
    return Future.delayed(Duration(seconds: 5), () {
        return allExpenses;
    });
  }
}

class FetchException implements Exception {
  final String message;

  FetchException(this.message);
}

ExpenseRepositoryMock repository = ExpenseRepositoryMock();
