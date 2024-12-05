import 'package:pulselab/src/enums/blood_type.dart';
import 'package:pulselab/src/enums/priority.dart';
import 'package:pulselab/src/model/blood_donation_recipient_model.dart';
import 'package:pulselab/src/model/patient_model.dart';
import 'package:pulselab/src/repository/blood_donation_recipient/blood_donation_recipient_repository.dart';

class MockBloodDonationRecipientRepository implements BloodDonationRecipientRepository {
  static final _data = <BloodDonationRecipientModel>[
    BloodDonationRecipientModel(
      id: "e9993d25-a003-4270-986e-d0d246e9943b",
      createdOn: DateTime(2024, 8, 30),
      patient: PatientModel(
        id: "49212a57-5952-478a-977c-163960b4fe1f",
        name: "Sophia Marina Carvalho",
        weight: 66,
        height: 1.82,
        birthdate: DateTime(1970, 3, 1),
        bloodType: BloodType.abPositive,
        priority: Priority.high,
      ),
      healthIssueDescription: "Realizar uma cirurgia agendada.",
    ),
    BloodDonationRecipientModel(
      id: "99b8ef09-0d22-49eb-b5dd-1e950ffbc8f1",
      createdOn: DateTime(2024, 11, 23),
      patient: PatientModel(
        id: "503d9620-8568-480d-9ffe-280886fba179",
        name: "Kamilly Priscila Jesus",
        weight: 62,
        height: 1.75,
        birthdate: DateTime(1960, 12, 3),
        bloodType: BloodType.aPositive,
        priority: Priority.emergency,
      ),
    ),
  ];

  @override
  Future<List<BloodDonationRecipientModel>> getAll() async {
    return await Future<List<BloodDonationRecipientModel>>.value(_data);
  }

  @override
  Future<BloodDonationRecipientModel?> getById(String id) async {
    final recipient = _data.where((recipient) => recipient.id == id).firstOrNull;
    return await Future<BloodDonationRecipientModel>.value(recipient);
  }
}
