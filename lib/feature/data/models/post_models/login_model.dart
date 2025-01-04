import 'package:todo_app/feature/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity
{
  const LoginModel({required super.phone, required super.password});

  Map<String, dynamic> toJson () =>
      {
        'phone' : phone,
        'password' : password,
      };

}