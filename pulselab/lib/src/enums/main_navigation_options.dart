import 'package:flutter/material.dart';

enum MainNavigationOptions {
  appointments(
    title: "Agendamentos",
    icon: Icons.calendar_month_outlined,
  ),
  donations(
    title: "Doações",
    icon: Icons.abc,
  ),
  account(
    title: "Conta",
    icon: Icons.account_circle_outlined,
  );

  const MainNavigationOptions({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
}
