import 'package:dartz/dartz.dart';
import 'package:todo_app/features/auth/domain/entities/Auth_entity.dart';
import 'package:todo_app/features/auth/domain/repositories/auth_repository.dart';

class AuthUseCase {
  final AuthRepository repository;

  AuthUseCase(this.repository);

  Future<Either<String, AuthEntity>> login(String phone, String password) {
    if (phone.isEmpty || password.isEmpty) {
      return Future.value(left('Invalid phone or password'));
    }
    return repository.login(phone: phone, password: password);
  }

  Future<Either<String, AuthEntity>> register({
    required String name,
    required String phone,
    required String password,
    required int experience,
    required String address,
    required String level,
  }) {
    if(phone.isEmpty || password.isEmpty){
      return Future.value(left('fields is empty'));
    }
    return repository.register(name: name, phone: phone, password: password, experience: experience, address: address, level: level);
  }

  Future<Either<String, void>> logout({required String token}){
    if(token.isEmpty){
      return Future.value(left('token not found'));
    }
    return repository.logout(token: token);
  }

  Future<Either<String, String>> refreshAccessToken (String refreshToken) {
    if(refreshToken.isEmpty){
      return Future.value(left('Invalid refresh token'));
    }
    return repository.refreshAccessToken(refreshToken);
  }

}
