import 'package:dartz/dartz.dart';
import 'package:todo_app/features/auth/domain/entities/Auth_entity.dart';

abstract class AuthRepository {
  Future<Either<String, AuthEntity>> login({
    required String phone,
    required String password,
  });

  Future<Either<String, AuthEntity>> register({
    required String name,
    required String phone,
    required String password,
    required int experience,
    required String address,
    required String level,
  });

  Future<Either<String, void>> logout({required String token});

  Future<Either<String, String>> refreshAccessToken(String refreshToken);
}
