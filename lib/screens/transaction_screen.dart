import 'package:flutter/material.dart';
import '../data/dummy_transactions.dart';
import '../utils/date_helper.dart';
import '../utils/iconhelper.dart';
import '../widgets/transaction_tile.dart';
import 'add_transaction_screen.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final List<String> categories = [
  "All",
  "Income",
  "Food",
  "Travel",
  "Entertainment",
];

String selectedCategory = "All";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

  TextField(
    decoration: InputDecoration(
      hintText: "Search transactions...",
      prefixIcon:  Icon(Icons.search),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

   const SizedBox(height: 16),

SizedBox(
  height: 40,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: categories.length,
    itemBuilder: (context, index) {
      final category = categories[index];

      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ChoiceChip(
          label: Text(category),

          selected: selectedCategory == category,

          onSelected: (_) {
            setState(() {
              selectedCategory = category;
            });
          },
        ),
      );
    },
  ),
),

const SizedBox(height: 20),

Expanded(
  child: ListView.builder(
    itemCount: dummyTransactions.length,
    itemBuilder: (context, index) {
      final tx = dummyTransactions[index];

      return TransactionTile(
        icon: getCategoryIcon(tx.category),
        title: tx.title,
        date: formatTransactionDate(tx.date),
        amount: tx.isIncome
            ? "+ ₹${tx.amount}"
            : "- ₹${tx.amount}",
        amountColor: tx.isIncome ? Colors.green : Colors.red,
      );
    },
  ),
),

],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const AddTransactionScreen(),
    ),
  );
},
        child: const Icon(Icons.add),
      ),
    );
  }
}