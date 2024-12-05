import 'package:flutter/material.dart';

class TextLabel<T> extends StatelessWidget {
  const TextLabel({
    super.key,
    required this.data,
    this.dataColor,
    required this.title,
  });

  final T data;
  final Color? dataColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          data.toString(),
          style: TextStyle(
            color: dataColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
