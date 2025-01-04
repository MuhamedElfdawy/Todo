class ListTaskModel
{
  late final String img;
  late final String title;
  late final String desc;
  late final String priority;
  late final String status;
  late final String date;

  ListTaskModel.fromJson(Map<String, dynamic> map){
    img = map['image'];
    title = map['title'];
    desc = map['desc'];
    priority = map['priority'];
    status = map['status'];
    date = map['createdAt'];
  }
}