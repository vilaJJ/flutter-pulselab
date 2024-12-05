import 'package:pulselab/src/model/base_model.dart';

abstract class BaseRepository {
  Future<BaseModel?> getById(String id);
}