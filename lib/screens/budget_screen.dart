import 'package:flutter/material.dart';

import '../data/dummy_budgets.dart';
import '../widgets/budget_card.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Budget"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: const [

                    Text(
                      "Monthly Budget",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "₹10,000",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: dummyBudgets.length,
                itemBuilder: (context, index) {
                  final budget = dummyBudgets[index];

                  return BudgetCard(
                    category: budget["category"],
                    spent: budget["spent"],
                    limit: budget["limit"],
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: const Icon(Icons.add),
      ),
    );
  }
}