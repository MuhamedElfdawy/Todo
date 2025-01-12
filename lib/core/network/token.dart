import 'package:flutter/cupertino.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/main.dart';



  Future<void> saveToken({
        required String id,
        required String accessToken,
        required String refreshToken
  }) async {
    if (accessToken.isEmpty) {
      throw Exception('token is null');
    } else {
      await prefs.setString('accessToken', accessToken);
      await prefs.setString('refreshToken', refreshToken);
      await prefs.setString('id', id);
    }
  }

Future<void> clearToken() async {
  await prefs.remove('accessToken');
  await prefs.remove('refreshToken');
  await prefs.remove('id');
}

  Future<void> setRefreshToken({required String? newAccessToken}) async {
    if (newAccessToken == null) {
      throw Exception('new access token is null');
    } else {
      await prefs.setString('accessToken', newAccessToken);
    }
  }

  Future<String> getRefreshToken() async{
  final refreshToken = prefs.getString('refreshToken');
  if(refreshToken == null){
    throw Exception('Refresh Token not found');
  }
   final response = await dio.get(
      '${Constants.baseUrl}/refresh-token?token=$refreshToken',
    );
   if(response.statusCode == 200){
     final newAccessToken = response.data['access_token'];
     await prefs.setString('accessToken', newAccessToken);
     debugPrint(newAccessToken);
     return newAccessToken;
   } else if(response.statusCode == 403){
     throw Exception('Refresh token expired, Please Login again.');
   }
    throw Exception('Error refreshing token');
}









