import 'package:pulselab/src/constants/preferences_constants.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/repository/user/mock_user_repository.dart';
import 'package:pulselab/src/repository/user/user_repository.dart';
import 'package:pulselab/src/services/preferences/mock_preferences.dart';
import 'package:pulselab/src/services/preferences/preferences.dart';
import 'package:pulselab/src/utilities/environment/user_environment.dart';

class MainViewModel {
  UserModel? user;

  final Preferences _preferences = MockPreferences();
  final UserRepository _userRepository = MockUserRepository();

  Future<void> loadInitialData() async {
    await _getCurrentlyUser();
    UserEnvironment.actualUser = user;
  }

  Future<void> _getCurrentlyUser() async {
    final userId = await _getCurrentlyUserId();
    user = userId is String ? await _userRepository.getById(userId) : null;
  }

  Future<String?> _getCurrentlyUserId() async {
    return await _preferences.getString(PreferencesKeysConstants.currentlyUserId);
  }
}
