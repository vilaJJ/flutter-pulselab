import 'package:flutter/material.dart';

enum MainNavigationOptions {
  appointments(
    title: "Agendamentos",
    icon: Icons.calendar_month_outlined,
    activeIcon: Icons.calendar_month_rounded,
  ),
  donations(
    title: "Doações",
    icon: Icons.abc_outlined,
    activeIcon: Icons.abc_rounded,
  ),
  account(
    title: "Conta",
    icon: Icons.account_circle_outlined,
    activeIcon: Icons.account_circle_rounded,
  );

  const MainNavigationOptions({
    required this.title,
    required this.icon,
    required this.activeIcon,
  });

  final String title;
  final IconData icon;
  final IconData activeIcon;
}
