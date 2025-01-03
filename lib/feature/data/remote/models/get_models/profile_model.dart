class ProfileModel
{
  late final String name;
  late final String phone;
  late final String level;
  late final int experience;
  late final String address;


  ProfileModel.fromJson(Map<String, dynamic> map)
  {
    name = map['displayName'];
    phone = map['username'];
    level = map['level'];
    experience = map['experienceYears'];
    address = map['address'];
  }

}