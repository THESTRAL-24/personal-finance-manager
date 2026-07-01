import '../models/transaction.dart';

final List<Transaction> dummyTransactions = [
  Transaction(
    title: "Salary",
    amount: 50000,
    category: "Income",
    date: DateTime.now(),
    isIncome: true,
  ),
  Transaction(
    title: "Groceries",
    amount: 2500,
    category: "Food",
    date: DateTime.now(),
    isIncome: false,
  ),
  Transaction(
    title: "Movie",
    amount: 500,
    category: "Entertainment",
    date: DateTime.now(),
    isIncome: false,
  ),
  Transaction(
    title: "Freelance",
    amount: 8000,
    category: "Income",
    date: DateTime.now(),
    isIncome: true,
  ),
];