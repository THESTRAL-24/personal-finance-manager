import 'package:intl/intl.dart';

String formatTransactionDate(DateTime date) {
  final now = DateTime.now();

  if (date.year == now.year &&
      date.month == now.month &&
      date.day == now.day) {
    return "Today";
  }

  final yesterday = now.subtract(const Duration(days: 1));

  if (date.year == yesterday.year &&
      date.month == yesterday.month &&
      date.day == yesterday.day) {
    return "Yesterday";
  }

  return DateFormat('dd MMM').format(date);
}