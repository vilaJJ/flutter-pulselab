import 'package:pulselab/src/model/person_model.dart';

class UserModel extends PersonModel {
  UserModel({
    required super.id,
    required super.name,
    super.gender,
    required super.weight,
    required super.height,
    required super.birthdate,
    super.bloodType,
    this.photoUrl,
    this.phoneNumber,
    required this.emailAddress,
  });

  final String? photoUrl;
  final String? phoneNumber;
  final String emailAddress;
}
