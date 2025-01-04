import 'package:todo_app/feature/domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  ProfileModel({
    required super.name,
    required super.phone,
    required super.experience,
    required super.address,
    required super.level,
  });


  factory ProfileModel.formJson(Map<String, dynamic> json) =>
      ProfileModel(
        name: json['displayName']?? '',
        phone: json['username']?? '',
        experience: json['experienceYears'] ?? 0,
        address: json['address']?? '',
        level: json['level']?? '',
      );
}
