import 'package:pulselab/src/model/people/user_model.dart';
import 'package:pulselab/src/repository/base_repository.dart';

abstract class UserRepository implements BaseRepository {
  @override
  Future<List<UserModel>> getAll();

  @override
  Future<UserModel?> getById(String id);
}
