import 'package:dartz/dartz.dart';
import 'package:todo_app/features/profile/domain/entities/profile_entity.dart';
import 'package:todo_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileUseCase {
  final ProfileRepository repository;

  ProfileUseCase({required this.repository});

  Future<Either<String, ProfileEntity>> call () async{
      return await repository.getProfileData();
  }
}