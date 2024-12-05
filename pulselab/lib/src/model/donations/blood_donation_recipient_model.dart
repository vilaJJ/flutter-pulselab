import 'package:pulselab/src/model/base_model.dart';
import 'package:pulselab/src/model/people/patient_model.dart';

class BloodDonationRecipientModel extends BaseModel {
  BloodDonationRecipientModel({
    required super.id,
    required this.createdOn,
    required this.patient,
    this.healthIssueDescription
  });

  final DateTime createdOn;
  final PatientModel patient;
  final String? healthIssueDescription;
}
