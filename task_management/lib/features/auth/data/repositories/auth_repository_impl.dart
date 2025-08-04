import 'package:Taskia/features/auth/data/models/user_model.dart';
import 'package:Taskia/features/auth/domain/entities/user.dart';
import 'package:Taskia/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  // In a real app, this would be replaced with actual API calls
  // For now, we'll simulate the behavior

  @override
  Future<User> register({
    required String name,
    required String email,
    required String password,
  }) async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Simulate successful registration
    return UserModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      email: email,
      password: password,
    );
  }

  @override
  Future<User> login({
    required String email,
    required String password,
  }) async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Simulate successful login
    return UserModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: 'Demo User',
      email: email,
      password: password,
    );
  }

  @override
  Future<void> logout() async {
    // Simulate API delay
    await Future.delayed(const Duration(milliseconds: 500));
    // Clear local storage, tokens, etc.
  }

  @override
  Future<User?> getCurrentUser() async {
    // Check if user is logged in from local storage
    // For now, return null
    return null;
  }

  @override
  Future<bool> isAuthenticated() async {
    final user = await getCurrentUser();
    return user != null;
  }
}
