import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/feature/domain/entities/login_entity.dart';
import 'package:todo_app/feature/domain/repositories/login_repository.dart';

class LoginUseCase implements UseCase<LoginEntity,NoParams>
{
  late final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  @override
  Future<Either<Failure, LoginEntity>> call(NoParams params) =>
    loginRepository.LoginUseCase() ;
}


