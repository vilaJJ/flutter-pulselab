import 'package:flutter/material.dart';
import 'package:pulselab/src/enums/blood_type.dart';

class BloodTypeLabel extends StatelessWidget {
  const BloodTypeLabel({
    super.key,
    required this.bloodType,
  });

  final BloodType? bloodType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
        ),
        Text(
          bloodType?.description ?? "Não informado",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 48,
          ),
        ),
        const Text(
          "Tipo sanguíneo",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
