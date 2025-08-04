import 'package:Taskia/features/auth/domain/entities/user.dart';
import 'package:Taskia/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<User> call({
    required String name,
    required String email,
    required String password,
  }) async {
    return await repository.register(
      name: name,
      email: email,
      password: password,
    );
  }
}
