import 'package:dartz/dartz.dart';
import 'package:todo_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<String, UserEntity>> login({
    required String phone,
    required String password,
  });

  Future<Either<String, UserEntity>> register({
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
