import 'package:dio/dio.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/profile/data/models/profile_model.dart';
import 'package:todo_app/main.dart';

class ProfileDataSource {
  final Dio dio;
  ProfileDataSource({required this.dio});

   Future<ProfileModel> getProfileData () async{
     final token = prefs.getString('accessToken');
     if(token == null){
       throw Exception('token not found');
     }
     try{
       final response = await dio.get(
           '${Constants.baseUrl}/profile',
           options: Options(
               headers: {'Authorization' : 'Bearer $token'}
           )
       );
       return ProfileModel.fromJson(response.data);
     }on DioException catch (e) {
       if(e.response!.statusCode == 401){
         final newToken = await getRefreshToken();
         final response = await dio.get(
           '${Constants.baseUrl}/profile',
           options: Options(
             headers: {'Authorization' : 'Bearer $newToken'}
           )
         );
         return ProfileModel.fromJson(response.data);
       } else {
         throw Exception('Failed to fetch profile data: ${e.message}');
       }
     }
   }
}

