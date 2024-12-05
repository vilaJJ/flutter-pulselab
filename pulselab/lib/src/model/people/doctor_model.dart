import 'package:pulselab/src/enums/gender.dart';
import 'package:pulselab/src/model/people/person_model.dart';

class DoctorModel extends PersonModel {
  DoctorModel({
    required super.id,
    required super.name,
    required super.birthdate,
    required super.gender,
  });

  String get presentationName {
    String acronym = "Dr";

    if (gender == Gender.female) {
      acronym += "a";
    }

    return "$acronym. $name";
  }
}
