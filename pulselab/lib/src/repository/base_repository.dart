import 'package:pulselab/src/model/base_model.dart';

abstract class BaseRepository {
  Future<List<BaseModel>> getAll();
  Future<BaseModel?> getById(String id);
}