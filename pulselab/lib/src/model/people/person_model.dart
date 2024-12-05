import 'package:pulselab/src/enums/blood_type.dart';
import 'package:pulselab/src/enums/gender.dart';
import 'package:pulselab/src/model/base_model.dart';

abstract class PersonModel extends BaseModel {
  PersonModel({
    required super.id,
    required this.name,
    this.gender,
    this.weight,
    this.height,
    required this.birthdate,
    this.bloodType,
  });

  final String name;
  final Gender? gender;
  final double? weight;
  final double? height;
  final DateTime birthdate;
  final BloodType? bloodType;

  int get age {
    final now = DateTime.now();
    final difference = now.difference(birthdate);
    return difference.inDays ~/ 365;
  }
}
