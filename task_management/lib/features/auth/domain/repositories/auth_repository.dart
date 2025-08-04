import 'package:Taskia/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> register({
    required String name,
    required String email,
    required String password,
  });

  Future<User> login({
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<User?> getCurrentUser();

  Future<bool> isAuthenticated();
}
