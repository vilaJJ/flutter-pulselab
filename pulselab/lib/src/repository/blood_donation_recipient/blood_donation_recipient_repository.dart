import 'package:pulselab/src/model/blood_donation_recipient_model.dart';
import 'package:pulselab/src/repository/base_repository.dart';

abstract class BloodDonationRecipientRepository implements BaseRepository {
  @override
  Future<List<BloodDonationRecipientModel>> getAll();

  @override
  Future<BloodDonationRecipientModel?> getById(String id);
}