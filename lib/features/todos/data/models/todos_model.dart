import 'package:equatable/equatable.dart';

class ToDosModel extends Equatable {
  final String id;
  final String img;
  final String title;
  final String desc;
  final String priority;
  final String status;
  final String user;
  final String date;

  const ToDosModel(
      {required this.id,
      required this.img,
      required this.title,
      required this.desc,
      required this.priority,
      required this.status,
      required this.user,
      required this.date,
      });

  factory ToDosModel.fromJson(Map<String, dynamic> json) {
    return ToDosModel(
        id: json['_id'],
        img: json['image'],
        title: json['title'],
        desc: json['desc'],
        priority: json['priority'],
        status: json['status'],
        user: json['user'],
        date: json['createdAt'],
    );
  }

  @override
  List<Object?> get props => [id,img,title,desc,priority,status,user,date];
}
