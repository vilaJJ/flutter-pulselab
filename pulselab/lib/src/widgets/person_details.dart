import 'package:flutter/material.dart';
import 'package:pulselab/src/model/person_model.dart';
import 'package:pulselab/src/widgets/blood_type_label.dart';
import 'package:pulselab/src/widgets/icon_text_label.dart';

class PersonDetails extends StatelessWidget {
  const PersonDetails({
    super.key,
    required this.person,
  });

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BloodTypeLabel(
          bloodType: person.bloodType,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconTextLabel(
                data: person.age,
                icon: Icons.cake_rounded,
                title: "Idade",
              ),
              IconTextLabel(
                data: "${person.weight} kg",
                icon: Icons.monitor_weight_rounded,
                title: "Peso",
              ),
              IconTextLabel(
                data: "${person.height} m",
                icon: Icons.height_outlined,
                title: "Altura",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
