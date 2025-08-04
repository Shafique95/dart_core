class AppConstants {
  // App Information
  static const String appName = 'Taskia';
  static const String appVersion = '1.0.0';

  // Navigation
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String dashboardRoute = '/dashboard';
  static const String profileRoute = '/profile';
  static const String tasksRoute = '/tasks';

  // Storage Keys
  static const String userTokenKey = 'user_token';
  static const String userDataKey = 'user_data';
  static const String themeKey = 'app_theme';
  static const String languageKey = 'app_language';

  // API Endpoints (for future use)
  static const String baseUrl = 'https://api.taskia.com';
  static const String loginEndpoint = '/auth/login';
  static const String registerEndpoint = '/auth/register';
  static const String tasksEndpoint = '/tasks';

  // Validation Rules
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 50;
  static const int minNameLength = 2;
  static const int maxNameLength = 50;
  static const int maxEmailLength = 100;

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultRadius = 10.0;
  static const double defaultElevation = 2.0;
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // Error Messages
  static const String networkError =
      'Network error. Please check your connection.';
  static const String serverError = 'Server error. Please try again later.';
  static const String unknownError = 'An unknown error occurred.';
  static const String invalidCredentials = 'Invalid email or password.';
  static const String emailAlreadyExists = 'Email already exists.';

  // Success Messages
  static const String loginSuccess = 'Login successful!';
  static const String registerSuccess = 'Registration successful!';
  static const String logoutSuccess = 'Logged out successfully!';
  static const String taskCreated = 'Task created successfully!';
  static const String taskUpdated = 'Task updated successfully!';
  static const String taskDeleted = 'Task deleted successfully!';
}
