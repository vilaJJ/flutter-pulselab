import 'package:pulselab/src/model/donations/blood_donation_recipient_model.dart';
import 'package:pulselab/src/repository/blood_donation_recipient/blood_donation_recipient_repository.dart';
import 'package:pulselab/src/repository/blood_donation_recipient/mock_blood_donation_recipient_repository.dart';

class DonationsViewModel {
  final BloodDonationRecipientRepository _bloodDonationRecipientRepository = MockBloodDonationRecipientRepository();

  Future<List<BloodDonationRecipientModel>> getAllBloodDonationRecipient() async {
    return await _bloodDonationRecipientRepository.getAll();
  }
}
