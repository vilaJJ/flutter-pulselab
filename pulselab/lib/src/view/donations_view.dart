import 'package:flutter/material.dart';

class DonationsView extends StatefulWidget {
  const DonationsView({super.key});

  @override
  State<DonationsView> createState() => _DonationsViewState();
}

class _DonationsViewState extends State<DonationsView> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Doações"));
  }
}
