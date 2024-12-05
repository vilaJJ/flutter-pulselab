import 'package:pulselab/src/enums/priority.dart';
import 'package:pulselab/src/model/people/person_model.dart';

class PatientModel extends PersonModel {
  PatientModel({
    required super.id,
    required super.name,
    required super.weight,
    required super.height,
    required super.birthdate,
    required super.bloodType,
    this.priority = Priority.normal,
  });

  final Priority priority;
}
