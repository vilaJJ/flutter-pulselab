import 'package:flutter/material.dart';
import 'package:pulselab/src/widgets/pulse_lab_icons.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    Color iconColor = Theme.of(context).primaryColor;
    double iconSize = MediaQuery.of(context).size.width * 0.5;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          PulseLabIcons.empty_list,
          color: iconColor,
          size: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
