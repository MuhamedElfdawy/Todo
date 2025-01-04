import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/network/network_info.dart';
import 'package:todo_app/feature/domain/entities/login_entity.dart';
import 'package:todo_app/feature/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository
{
  final NetworkInfo networkInfo;


  LoginRepositoryImpl({required this.networkInfo});

  @override
  Future<Either<Failure, LoginEntity>> LoginUseCase() {
    throw UnimplementedError();
  }

}