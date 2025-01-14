import 'package:dartz/dartz.dart';
import 'package:todo_app/features/todos/data/data_sources/todo_remote_data_source.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';
import 'package:todo_app/features/todos/domain/repositories/todos_repository.dart';

class ToDosRepositoryImpl implements ToDosRepository {
  final ToDosDataSource toDosDataSource;

  ToDosRepositoryImpl({required this.toDosDataSource});

  @override
  Future<Either<String, List<ToDosEntity>>> getToDos() async {
    try {
      final toDos = await toDosDataSource.getToDos();
      return Right(toDos.map((todo) => ToDosEntity(
          img: todo.img,
          title: todo.title,
          desc: todo.desc,
          priority: todo.priority,
          status: todo.status,
          date: todo.date,
      )).toList()
      );
    } catch (e){
      return Left('get todos data failed $e');
    }
  }

}