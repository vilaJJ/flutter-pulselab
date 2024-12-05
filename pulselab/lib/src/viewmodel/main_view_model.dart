import 'package:pulselab/src/constants/preferences_constants.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/repository/user/mock_user_repository.dart';
import 'package:pulselab/src/repository/user/user_repository.dart';
import 'package:pulselab/src/services/preferences/mock_preferences.dart';
import 'package:pulselab/src/services/preferences/preferences.dart';

class MainViewModel {
  UserModel? user;

  final Preferences preferences = MockPreferences();
  final UserRepository userRepository = MockUserRepository();

  Future<void> loadInitialData() async {
    await _getCurrentlyUser();
  }

  Future<void> _getCurrentlyUser() async {
    final userId = await _getCurrentlyUserId();
    user = userId is String ? await userRepository.getById(userId) : null;
  }

  Future<String?> _getCurrentlyUserId() async {
    return await preferences.getString(PreferencesKeysConstants.currentlyUserId);
  }
}
