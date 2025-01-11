import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app/features/auth/data/data_sources/auth_api_service.dart';
import 'package:todo_app/features/auth/domain/entities/user_entity.dart';
import 'package:todo_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository{
  final AuthDataSource authDataSource;

  AuthRepositoryImpl({required this.authDataSource});

  @override
  Future<Either<String, UserEntity>> login({required String phone, required String password}) async{
    try{
      final userModel = await authDataSource.login(phone: phone, password: password);
      return Right(UserEntity(
          id: userModel.id,
          accessToken: userModel.accessToken,
          refreshToken: userModel.refreshToken,
      ));
    } catch (e){
      return const Left('Login failed, Please check the phone number or password');
    }
  }

  @override
  Future<Either<String, UserEntity>> register({required String name, required String phone, required String password, required int experience, required String address, required String level}) async{
    try{
      final userModel = await authDataSource.register(
          name: name,
          phone: phone,
          password: password,
          experience: experience,
          address: address,
          level: level,
      );
      return Right(UserEntity(id: userModel.id, accessToken: userModel.accessToken, refreshToken: userModel.refreshToken));
    }catch (e) {
      debugPrint('$e');
      return Left('register failed $e');
    }
  }

  @override
  Future<Either<String, void>> logout({required String token}) async{
   try{
     await authDataSource.logout(token);
     return const Right(null);
   }catch (e) {
     return Left('logout failed $e');
   }
  }

  @override
  Future<Either<String, String>> refreshAccessToken(String refreshToken) async{
    try{
     await authDataSource.refreshToken(newAccessToken: refreshToken);
      return const Right('token refresh success');
    }catch (e) {
      return Left('token refresh failed $e');
    }
  }
}