import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 5,
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton.filled(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
        )
      ],
    );
  }
}
