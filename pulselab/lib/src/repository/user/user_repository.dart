import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/repository/base_repository.dart';

abstract class UserRepository implements BaseRepository {
  @override
  Future<UserModel?> getById(String id);
}
