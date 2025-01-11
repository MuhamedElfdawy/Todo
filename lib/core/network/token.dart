import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

Future<void> saveToken ({required String id, required String? accessToken, required String refreshToken}) async{
  if(accessToken == null){
    throw Exception('token is null');
  }else {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', accessToken);
    await prefs.setString('refreshToken', refreshToken);
    await prefs.setString('id', id);
  }
}

Future<void> refreshToken ({required String? newAccessToken}) async{
  if(newAccessToken == null){
    throw Exception('new access token is null');
  }else {
    await prefs.setString('accessToken', newAccessToken);
  }

}

Future<void> clearToken () async{
  await prefs.remove('accessToken');
  await prefs.remove('refreshToken');
  await prefs.remove('id');
}