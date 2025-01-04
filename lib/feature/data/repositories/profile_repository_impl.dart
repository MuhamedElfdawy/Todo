import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/exceptions.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/network/network_info.dart';
import 'package:todo_app/feature/data/data_sources/local/profile_local_data_source.dart';
import 'package:todo_app/feature/data/data_sources/remote/profile_remote_data_source.dart';
import 'package:todo_app/feature/domain/entities/profile_entity.dart';
import 'package:todo_app/feature/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final NetworkInfo networkInfo;
  final ProfileRemoteDataSource profileRemoteDataSource;
  final ProfileLocalDataSource profileLocalDataSource;

  ProfileRepositoryImpl({
    required this.profileRemoteDataSource,
    required this.profileLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, ProfileEntity>> ProfileUseCase() async{
    if(await networkInfo.isConnected){
      try{
        final remoteProfileDat = await profileRemoteDataSource.getRemoteProfileDataSource();
        return Right(remoteProfileDat);
      } on ServerException {
        return left(ServerFailure());
      }
    }
    else {
      try{
        final cacheProfileDat = await profileLocalDataSource.getLastProfileDataSource();
        return Right(cacheProfileDat);
      } on CachException {
        return left(CacheFailure());
      }
    }
  }
}
