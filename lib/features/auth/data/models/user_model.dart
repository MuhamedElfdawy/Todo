import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String accessToken;
  final String refreshToken;

  const UserModel({required this.id, required this.accessToken, required this.refreshToken});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
        id: json['_id'],
        accessToken: json['access_token'],
        refreshToken: json['refresh_token'],
    );
  }
  @override
  List<Object?> get props => [id,accessToken,refreshToken];

}