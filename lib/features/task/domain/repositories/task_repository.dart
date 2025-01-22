import 'package:dartz/dartz.dart';
import 'package:todo_app/features/task/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<Either<String, TaskEntity>> getTaskDetails();
}