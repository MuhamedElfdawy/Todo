import 'package:dartz/dartz.dart';
import 'package:todo_app/features/task/domain/entities/task_entity.dart';
import 'package:todo_app/features/task/domain/repositories/task_repository.dart';

class TaskUseCase {
  final TaskRepository repository;

  TaskUseCase({required this.repository});

  Future<Either<String, TaskEntity>> call() async{
    return await repository.getTaskDetails();
  }
}