import 'package:dartz/dartz.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';
import 'package:todo_app/features/todos/domain/repositories/todos_repository.dart';

class ToDosUseCase {
  final ToDosRepository repository;

  ToDosUseCase({required this.repository});

  Future<Either<String, List<ToDosEntity>>> call() async{
    return await repository.getToDos();
  }
}