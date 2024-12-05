import 'package:pulselab/src/constants/preferences_constants.dart';
import 'package:pulselab/src/services/preferences/preferences.dart';

class MockPreferences implements Preferences {
  static final values = <String, dynamic>{
    PreferencesKeysConstants.currentlyUserId: "ee52c78b-a95c-424d-9dac-1eae79732f3c",
  };

  @override
  Future<String?> getString(String key) async {
    if (!values.containsKey(key)) {
      return null;
    }

    return await Future.value(values[key]);
  }
}
