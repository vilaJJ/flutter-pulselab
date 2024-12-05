import 'package:pulselab/src/model/appointments/appointment_model.dart';
import 'package:pulselab/src/repository/appointment/appointment_repository.dart';
import 'package:pulselab/src/repository/appointment/mock_appointment_repository.dart';

class AppointmentsViewModel {
  final AppointmentRepository _appointmentRepository = MockAppointmentRepository();

  Future<List<AppointmentModel>> getUserAppointments() async {
    return await _appointmentRepository.getAll();
  }
}
