import 'package:flutter/material.dart';

class IconTextLabel<T> extends StatelessWidget {
  const IconTextLabel({
    super.key,
    required this.data,
    required this.icon,
    required this.title,
  });

  final T data;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          data.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            Text(title),
          ],
        )
      ],
    );
  }
}
