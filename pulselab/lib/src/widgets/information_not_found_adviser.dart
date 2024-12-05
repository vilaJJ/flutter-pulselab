import 'package:flutter/material.dart';

class InformationNotFoundAdviser extends StatelessWidget {
  const InformationNotFoundAdviser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.amber,
          size: 64,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            "Não foram encontradas informações. Tente novamente mais tarde.",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
