import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable
{
  final String phone;
  final String password;

  const LoginEntity({required this.phone,required this.password});

  @override
  List<Object?> get props => [phone, password,];
}