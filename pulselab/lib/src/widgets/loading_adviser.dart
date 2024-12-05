import 'package:flutter/material.dart';

class LoadingAdviser extends StatelessWidget {
  const LoadingAdviser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text("Carregando..."),
        ),
      ],
    );
  }
}
