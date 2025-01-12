import 'package:dartz/dartz.dart';
import 'package:todo_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:todo_app/features/profile/domain/entities/profile_entity.dart';
import 'package:todo_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileRepositoryImpl({required this.profileDataSource});

  @override
  Future<Either<String, ProfileEntity>> getProfileData() async {
    try {
      final profile = await profileDataSource.getProfileData();
      return Right(ProfileEntity(
          id: profile.id,
          name: profile.name,
          phone: profile.phone,
          level: profile.level,
          experience: profile.experience,
          address: profile.address,
      ));
    } catch (e) {
      return Left('Profile Fetch Failed $e');
    }
  }

}