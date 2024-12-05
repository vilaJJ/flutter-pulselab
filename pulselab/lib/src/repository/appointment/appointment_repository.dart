import 'package:pulselab/src/model/appointments/appointment_model.dart';
import 'package:pulselab/src/repository/base_repository.dart';

abstract class AppointmentRepository implements BaseRepository {
  @override
  Future<List<AppointmentModel>> getAll();

  @override
  Future<AppointmentModel?> getById(String id);
}