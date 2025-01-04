import 'package:todo_app/feature/data/models/get_models/profile_model.dart';

abstract class ProfileLocalDataSource
{
  Future<ProfileModel> getLastProfileDataSource();
  Future<void> cacheProfile(ProfileModel profile);
}