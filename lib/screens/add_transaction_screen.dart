import 'package:flutter/material.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final titleController = TextEditingController();
final amountController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

bool isIncome = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Transaction"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
  decoration: const InputDecoration(
    labelText: "Title",
    border: OutlineInputBorder(),
  ),
),


const SizedBox(height: 16),

TextFormField(
  controller: amountController,
  keyboardType: TextInputType.number,
  decoration: const InputDecoration(
    labelText: "Amount",
    border: OutlineInputBorder(),
  ),
),
const SizedBox(height: 16),

DropdownButtonFormField<String>(
  decoration: const InputDecoration(
    labelText: "Category",
    border: OutlineInputBorder(),
  ),
  items: const [
    DropdownMenuItem(
      value: "Food",
      child: Text("Food"),
    ),
    DropdownMenuItem(
      value: "Travel",
      child: Text("Travel"),
    ),
    DropdownMenuItem(
      value: "Entertainment",
      child: Text("Entertainment"),
    ),
    DropdownMenuItem(
      value: "Income",
      child: Text("Income"),
    ),
  ],
  onChanged: (value) {},
),
const SizedBox(height: 16),

Row(
  children: [
    Expanded(
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: isIncome ? Colors.green : null,
    ),
    onPressed: () {
      setState(() {
        isIncome = true;
      });
    },
    child: const Text("Income"),
  ),
),

    const SizedBox(width: 12),

    Expanded(
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: !isIncome ? Colors.red : null,
    ),
    onPressed: () {
      setState(() {
        isIncome = false;
      });
    },
    child: const Text("Expense"),
  ),
),
  ],
),
const SizedBox(height: 16),

SizedBox(
  width: double.infinity,
  child: OutlinedButton.icon(
    onPressed: () async {
  final pickedDate = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2020),
    lastDate: DateTime(2035),
  );

  if (pickedDate != null) {
    setState(() {
      selectedDate = pickedDate;
    });
  }
},
    icon: const Icon(Icons.calendar_today),
    label: Text(
  "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
),
  ),
),
const SizedBox(height: 24),

SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
  if (titleController.text.trim().isEmpty ||
      amountController.text.trim().isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Please fill all fields"),
      ),
    );
    return;
  }

  print("Title: ${titleController.text}");
  print("Amount: ${amountController.text}");
  print("Income: $isIncome");
  print("Date: $selectedDate");
  ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text("Transaction Saved"),
  ),
);
},

    child: const Text("Save Transaction"),
  ),
),
          ],
        ),
      ),
    );
  }
}