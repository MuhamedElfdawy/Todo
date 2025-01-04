import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/feature/domain/entities/profile_entity.dart';

abstract class ProfileRepository
{
  Future<Either<Failure, ProfileEntity>> ProfileUseCase();
}