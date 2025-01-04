import 'package:todo_app/feature/data/models/get_models/profile_model.dart';

abstract class ProfileRemoteDataSource
{
  Future<ProfileModel> getRemoteProfileDataSource();
}