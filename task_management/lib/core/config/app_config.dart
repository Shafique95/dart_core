class AppConfig {
  static const String appName = 'Taskia';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'A modern task management application';

  // Theme Configuration
  static const int primaryColorSeed = 0xFF3F51B5; // Indigo
  static const bool useMaterial3 = true;
  static const bool debugShowCheckedModeBanner = false;

  // API Configuration (for future use)
  static const String baseUrl = 'https://api.taskia.com';
  static const int apiTimeout = 30000; // milliseconds

  // Validation Rules
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 50;
  static const int minNameLength = 2;
  static const int maxNameLength = 50;

  // Local Storage Keys
  static const String userPrefsKey = 'user_preferences';
  static const String authTokenKey = 'auth_token';
  static const String userIdKey = 'user_id';
}
