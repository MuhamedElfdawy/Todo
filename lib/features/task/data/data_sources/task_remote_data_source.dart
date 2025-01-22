import 'package:dio/dio.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/features/task/data/models/task_model.dart';
import 'package:todo_app/main.dart';

class TaskDataSource {
  Future<TaskModel> getTaskDetails() async{
    final token = prefs.get('accessToken');
    try{
      final response = await dio.get(
          'https://todo.iraqsapp.com/todos/67782647be4d2c1bfe6a1e3a',
          options: Options(
              headers: {'Authorization' : 'Bearer $token'}
          )
      );
      return TaskModel.fromJson(response.data);
    }on DioException catch(e) {
        if(e.response!.statusCode == 401){
          final newToken = await getRefreshToken();
          final response = await dio.get(
              'https://todo.iraqsapp.com/todos/67782647be4d2c1bfe6a1e3a',
              options: Options(
                  headers: {'Authorization' : 'Bearer $newToken'}
              )
          );
          return TaskModel.fromJson(response.data);
        } else {
          throw Exception('Failed to fetch ToDos data: ${e.message}');
        }
    }
  }
}