import 'package:flutter/material.dart';
import 'package:pulselab/src/widgets/pulse_lab_icons.dart';

enum MainNavigationOptions {
  appointments(
    title: "Agendamentos",
    icon: Icons.calendar_month_outlined,
    activeIcon: Icons.calendar_month_rounded,
  ),
  donations(
    title: "Doações",
    icon: PulseLabIcons.donation,
    activeIcon: PulseLabIcons.donation,
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
