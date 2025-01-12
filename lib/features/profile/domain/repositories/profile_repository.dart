import 'package:dartz/dartz.dart';
import 'package:todo_app/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<String, ProfileEntity>> getProfileData();
}