import 'package:flutter/material.dart';

IconData getCategoryIcon(String category) {
  switch (category) {
    case "Food":
      return Icons.fastfood;

    case "Travel":
      return Icons.directions_car;

    case "Entertainment":
      return Icons.movie;

    case "Shopping":
      return Icons.shopping_bag;

    case "Income":
      return Icons.account_balance_wallet;

    default:
      return Icons.attach_money;
  }
}