class RegisterModel {
  final String name;
  final String phone;
  final int experience;
  final String level;
  final String address;
  final String password;

  RegisterModel(
    this.name,
    this.phone,
    this.experience,
    this.level,
    this.address,
    this.password,
  );

  Map<String, dynamic> toJson() => {
        'displayName': name,
        'phone': phone,
        'experienceYears': experience,
        'level': name,
        'address': address,
        'password': password,
      };
}
