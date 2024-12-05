import 'package:pulselab/src/enums/blood_type.dart';
import 'package:pulselab/src/enums/gender.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/repository/user/user_repository.dart';

class MockUserRepository implements UserRepository {
  static final _data = <UserModel>[
    UserModel(
      id: "ee52c78b-a95c-424d-9dac-1eae79732f3c",
      name: "Rodrigo Ian Moreira",
      gender: Gender.male,
      weight: 101,
      height: 1.61,
      birthdate: DateTime(1964, 10, 1),
      emailAddress: "rodrigoianmoreira@localiza.com",
      bloodType: BloodType.abPositive,
      phoneNumber: "(63) 98368-6055",
      photoUrl: "assets/users/photo_ee52c78b-a95c-424d-9dac-1eae79732f3c.jpg",
    ),
  ];

  @override
  Future<UserModel?> getById(String id) async {
    final user = _data.where((user) => user.id == id).firstOrNull;
    return await Future<UserModel>.value(user);
  }
}
