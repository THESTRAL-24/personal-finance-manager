class Transaction {
  final String title;
  final double amount;
  final String category;
  final DateTime date;
  final bool isIncome;

  const Transaction({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
    required this.isIncome,
  });
} 