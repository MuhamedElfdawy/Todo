import 'package:dio/dio.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/auth/data/models/user_model.dart';

class AuthDataSource {
  final Dio dio;

  AuthDataSource({required this.dio});

  Future<UserModel> login(
      {required String phone, required String password}) async {
    final response = await dio.post('${Constants.baseUrl}/login', data: {
      'phone': phone,
      'password': password,
    });
    await saveToken(
      id: response.data['_id'],
      accessToken: response.data['access_token'],
      refreshToken: response.data['refresh_token'],
    );
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> register({
    required String name,
    required String phone,
    required String password,
    required int experience,
    required String address,
    required String level,
  }) async {
    final response = await dio.post('${Constants.baseUrl}/register', data: {
      'displayName': name,
      'phone': phone,
      'password': password,
      'experienceYears': experience,
      'address': address,
      'level': level,
    });
    await saveToken(
      id: response.data['_id'],
      accessToken: response.data['access_token'],
      refreshToken: response.data['refresh_token'],
    );
    return UserModel.fromJson(response.data);
  }

  Future<void> logout(String token) async {
      await dio.post(
      '${Constants.baseUrl}/logout',
      data: {'token': token},
    );
    await clearToken();
  }

  Future<void> refreshToken({required String newAccessToken}) async {
    final response =
        await dio.get('${Constants.baseUrl}/refresh-token?token=$newAccessToken');
    await saveToken(
        id: response.data['_id'],
        accessToken: response.data['access_token'],
        refreshToken: newAccessToken,
    );
  }
}
