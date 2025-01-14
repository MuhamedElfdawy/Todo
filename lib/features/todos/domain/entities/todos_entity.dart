import 'package:equatable/equatable.dart';

class ToDosEntity extends Equatable {
  final String img;
  final String title;
  final String desc;
  final String priority;
  final String status;
  final String date;

  const ToDosEntity(
      {required this.img,
      required this.title,
      required this.desc,
      required this.priority,
      required this.status,
      required this.date,
      });

  @override
  List<Object?> get props => [img,title,desc,priority,status,date];
}
