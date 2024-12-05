import 'package:pulselab/src/enums/appointment_type.dart';
import 'package:pulselab/src/model/base_model.dart';
import 'package:pulselab/src/model/people/doctor_model.dart';
import 'package:pulselab/src/model/people/patient_model.dart';

class AppointmentModel extends BaseModel {
  AppointmentModel({
    required super.id,
    required this.type,
    required this.name,
    required this.patient,
    required this.doctor,
    required this.createdOn,
    required this.dateTime,
  });

  final AppointmentType type;
  final String name;
  final PatientModel patient;
  final DoctorModel doctor;
  final DateTime createdOn;
  final DateTime dateTime;
}
