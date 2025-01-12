import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String level;
  final int experience;
  final String address;


  const ProfileEntity({
    required this.id,
    required this.name,
    required this.phone,
    required this.level,
    required this.experience,
    required this.address,
  });

  @override
  List<Object?> get props => [id,name,phone,experience,address,level];

}