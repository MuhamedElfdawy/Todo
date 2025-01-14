import 'package:dartz/dartz.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';

abstract class ToDosRepository {
  Future<Either<String, List<ToDosEntity>>> getToDos();
}