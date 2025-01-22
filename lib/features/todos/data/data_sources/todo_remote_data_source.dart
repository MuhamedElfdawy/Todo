import 'package:dio/dio.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/features/todos/data/models/todos_model.dart';
import 'package:todo_app/main.dart';

class ToDosDataSource {

  Future<List<ToDosModel>> getToDos() async{
    final token =  prefs.get('accessToken');
    try{
      final response = await dio.get(
          'https://todo.iraqsapp.com/todos?page=1',
          options: Options(
              headers: {'Authorization' : 'Bearer $token'}
          )
      );

      return (response.data as List).map((e) => ToDosModel.fromJson(e)).toList();
    }on DioException catch (e) {
      if(e.response!.statusCode == 401){
        final newToken = await getRefreshToken();
        final response = await dio.get(
            'https://todo.iraqsapp.com/todos?page=1',
            options: Options(
                headers: {'Authorization' : 'Bearer $newToken'}
            )
        );
        return (response.data as List).map((e) => ToDosModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to fetch ToDos data: ${e.message}');
      }
    }
  }
}