import 'package:dartz/dartz.dart';
import 'package:todo_app/features/task/data/data_sources/task_remote_data_source.dart';
import 'package:todo_app/features/task/domain/entities/task_entity.dart';
import 'package:todo_app/features/task/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDataSource dataSource;

  TaskRepositoryImpl({required this.dataSource});

  @override
  Future<Either<String, TaskEntity>> getTaskDetails() async {
    try {
      final task = await dataSource.getTaskDetails();
      return Right(TaskEntity(
        img: task.img,
        title: task.title,
        desc: task.desc,
        priority: task.priority,
        status: task.status,
        date: task.date,));
    } catch (e){
      return Left('get details failed $e');
    }
  }

}