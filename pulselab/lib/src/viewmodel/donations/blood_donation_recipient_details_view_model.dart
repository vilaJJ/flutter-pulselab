import 'package:pulselab/src/enums/blood_type.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/utilities/environment/user_environment.dart';

class BloodDonationRecipientDetailsViewModel {
  final UserModel? _actualUser = UserEnvironment.actualUser;

  bool? validateIfUserCanDonateToPatient(BloodType? patientBloodType) {
    final userBloodType = _actualUser?.bloodType;

    if (userBloodType == null || patientBloodType == null) {
      return null;
    }

    return userBloodType.validateCanDonateTo(patientBloodType);
  }

  String getBloodTextMismatch(BloodType? patientBloodType) {
    final userBloodTypeDescription = _actualUser?.bloodType?.description;
    final patientBloodTypeDescription = patientBloodType?.description;

    return "O tipo sanguíneo $userBloodTypeDescription não pode doar para o tipo $patientBloodTypeDescription.";
  }
}
