import 'package:flutter/material.dart';
import 'package:pulselab/src/widgets/empty_list.dart';

class MyDonationsView extends StatefulWidget {
  const MyDonationsView({super.key});

  @override
  State<MyDonationsView> createState() => _MyDonationsViewState();
}

class _MyDonationsViewState extends State<MyDonationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: const Text("Minhas doações"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: EmptyList(
            text: "Não foram encontrados registros de doações de sangue.",
          ),
        ),
      ),
    );
  }
}
