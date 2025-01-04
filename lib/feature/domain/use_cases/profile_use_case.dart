import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/feature/domain/entities/profile_entity.dart';
import 'package:todo_app/feature/domain/repositories/profile_repository.dart';

abstract class ProfileUseCase implements UseCase<ProfileEntity, NoParams>
{
  final ProfileRepository profileRepository;

  ProfileUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, ProfileEntity>> call(NoParams params) =>
      profileRepository.ProfileUseCase();
}