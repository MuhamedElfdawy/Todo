import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String level;
  final int experience;
  final String address;

  const ProfileModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.level,
    required this.experience,
    required this.address,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        id: json['_id'],
        name: json['displayName'],
        phone: json['username'],
      level: json['level'],
        experience: json['experienceYears'],
        address: json['address'],
    );
  }

  @override
  List<Object?> get props => [id, name, phone, experience, address, level];
}
