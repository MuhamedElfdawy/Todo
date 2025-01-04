import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String name;
  final String phone;
  final int experience;
  final String address;
  final String level;

  ProfileEntity({
    required this.name,
    required this.phone,
    required this.experience,
    required this.address,
    required this.level,
  });

  @override
  List<Object?> get props => [name,phone,experience,address,level];
}
