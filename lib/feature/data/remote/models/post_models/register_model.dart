class RegisterModel
{
  late final String name;
  late final String phone;
  late final int experience;
  late final String level;
  late final String address;
  late final String password;

  RegisterModel.fromJson(Map<String, dynamic> map)
  {
    name = map['displayName'];
    phone = map['phone'];
    experience = map['experienceYears'];
    level = map['level'];
    address = map['address'];
    password = map['password'];
  }
}