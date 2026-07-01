import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/summary_card.dart';
import '../widgets/transaction_tile.dart';
import '../data/dummy_transactions.dart';
import '../utils/iconhelper.dart';
import '../utils/date_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text("Personal Finance"),
    centerTitle: true,
  ),
  body: SafeArea(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
  "Hello, Asna 👋",
  style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 8),

const Text(
  "Welcome back",
  style: TextStyle(
    fontSize: 16,
    color: Colors.grey,
  ),
),

const SizedBox(height: 30),
const BalanceCard(),
const SizedBox(height: 25),

Row(
  children: [
    Expanded(
      child: SummaryCard(
        title: "Income",
        amount: "₹48,000",
        backgroundColor: Colors.green.shade100,
        textColor: Colors.green,
      ),
    ),

    const SizedBox(width: 15),

    Expanded(
      child: SummaryCard(
        title: "Expense",
        amount: "₹23,150",
        backgroundColor: Colors.red.shade100,
        textColor: Colors.red,
      ),
    ),
  ],
),
const SizedBox(height: 30),

const Text(
  "Recent Transactions",
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 15),
Expanded(
  child: ListView.builder(
    itemCount: dummyTransactions.length,
    itemBuilder: (context, index) {
      final tx = dummyTransactions[index];

      return TransactionTile(
        icon: getCategoryIcon(tx.category),
        title: tx.title,
        date: formatTransactionDate(tx.date),
        amount: tx.isIncome ? "+ ₹${tx.amount}" : "- ₹${tx.amount}",
        amountColor: tx.isIncome ? Colors.green : Colors.red,
      );
    },
  ),
),


        ],
      ),
    ),
  ),
);
  }
}