class LoginModel
{
  late final String phone;
  late final String password;

  LoginModel.formJson(Map<String, dynamic> map)
  {
    phone = map['phone'];
    password = map['password'];
  }
}